/*
  ESP32-S3 (BLE) -> Basys3 UART Remote Buttons + Online Time

  Behavior:
    - On boot: sync time ONCE to Basys3:  T HH MM \n
    - Later: ONLY sync again when Basys3 sends 'G' over UART
            (Basys3 sends 'G' when BTNC is pressed in CLOCK mode)

  BLE Remote Buttons:
    - BLE NUS (Nordic UART Service style)
    - Send characters: L R U D C (upper/lower ok)
    - ESP32 forwards to FPGA as: B<code>\n  (e.g., "BL\n")

  Notes:
    - ESP32-S3 supports BLE (not Classic SPP).
*/

#include <WiFi.h>
#include <time.h>

#include <BLEDevice.h>
#include <BLEServer.h>
#include <BLEUtils.h>
#include <BLE2902.h>

// -------------------- USER CONFIG --------------------
static const char* WIFI_SSID = "iQOO Neo9";
static const char* WIFI_PASS = "12345678";

// Timezone (Vietnam): UTC+7
static const long  GMT_OFFSET_SEC      = 7L * 3600L;
static const int   DAYLIGHT_OFFSET_SEC = 0;

// UART to FPGA
static const uint32_t FPGA_BAUD = 115200;

// Serial2 pins: CHANGE to match your wiring
// Example: TX=17 RX=18
static const int PIN_UART_TX = 17;
static const int PIN_UART_RX = 18;

// BLE device name
static const char* BLE_NAME = "Basys3-Clock-Remote";
// -----------------------------------------------------

// Nordic UART Service UUIDs
static BLEUUID UART_SERVICE_UUID("6E400001-B5A3-F393-E0A9-E50E24DCCA9E");
static BLEUUID UART_RX_UUID     ("6E400002-B5A3-F393-E0A9-E50E24DCCA9E"); // Write
static BLEUUID UART_TX_UUID     ("6E400003-B5A3-F393-E0A9-E50E24DCCA9E"); // Notify

static BLECharacteristic* g_txChar = nullptr;
static bool g_deviceConnected = false;

// -------------------- Helpers --------------------
static inline bool isCmdChar(char c) {
  return (c=='L' || c=='R' || c=='U' || c=='D' || c=='C' ||
          c=='l' || c=='r' || c=='u' || c=='d' || c=='c');
}

static inline char normCmd(char c) {
  if (c >= 'a' && c <= 'z') return char(c - 'a' + 'A');
  return c;
}

static void sendFpgaTimeHHMM(uint8_t hh, uint8_t mm) {
  char buf[8];
  // "T" + HH + MM + "\n"  Example: T0937\n
  snprintf(buf, sizeof(buf), "T%02u%02u\n", (unsigned)hh, (unsigned)mm);
  Serial2.write((const uint8_t*)buf, strlen(buf));
}

static void sendFpgaButton(char codeUpper) {
  // "B" + code + "\n"  Example: BL\n
  char buf[4];
  buf[0] = 'B';
  buf[1] = codeUpper;
  buf[2] = '\n';
  buf[3] = 0;
  Serial2.write((const uint8_t*)buf, 3);
}

static void bleNotify(const String& s) {
  if (g_deviceConnected && g_txChar) {
    g_txChar->setValue(s.c_str());
    g_txChar->notify();
  }
}

// -------------------- WiFi + NTP --------------------
static void setupWifiAndTime() {
  WiFi.mode(WIFI_STA);
  WiFi.begin(WIFI_SSID, WIFI_PASS);

  uint32_t t0 = millis();
  while (WiFi.status() != WL_CONNECTED && (millis() - t0) < 15000) {
    delay(200);
  }

  configTime(GMT_OFFSET_SEC, DAYLIGHT_OFFSET_SEC, "pool.ntp.org", "time.nist.gov");
}

static bool getLocalHHMM(uint8_t &hh, uint8_t &mm) {
  struct tm timeinfo;
  if (!getLocalTime(&timeinfo, 2000)) return false;
  hh = (uint8_t)timeinfo.tm_hour;
  mm = (uint8_t)timeinfo.tm_min;
  return true;
}

// Sync time once (if time is ready)
static void syncTimeToFpgaOnce() {
  uint8_t hh, mm;
  if (getLocalHHMM(hh, mm)) {
    sendFpgaTimeHHMM(hh, mm);

    String msg = "TIME_SYNC ";
    msg += String(hh);
    msg += ":";
    if (mm < 10) msg += "0";
    msg += String(mm);
    msg += "\n";

    bleNotify(msg);
    Serial.print(msg);
  } else {
    bleNotify("Time not ready.\n");
    Serial.println("Time not ready.");
  }
}

// Optional: wait a bit for NTP to become ready, but still sync only once.
static void syncTimeOnBootWithRetry(uint32_t maxWaitMs = 8000) {
  uint32_t start = millis();
  while (millis() - start < maxWaitMs) {
    uint8_t hh, mm;
    if (getLocalHHMM(hh, mm)) {
      sendFpgaTimeHHMM(hh, mm);

      String msg = "TIME_BOOT ";
      msg += String(hh);
      msg += ":";
      if (mm < 10) msg += "0";
      msg += String(mm);
      msg += "\n";

      bleNotify(msg);
      Serial.print(msg);
      return;
    }
    delay(250);
  }

  // If still not ready, just report (you can press BTNC later to force sync)
  bleNotify("Time not ready on boot. Press BTNC (CLOCK) later to sync.\n");
  Serial.println("Time not ready on boot. Press BTNC (CLOCK) later to sync.");
}

// -------------------- BLE Callbacks --------------------
class ServerCallbacks : public BLEServerCallbacks {
  void onConnect(BLEServer* pServer) override {
    g_deviceConnected = true;
    bleNotify("Connected. Send L/R/U/D/C.\n");
  }
  void onDisconnect(BLEServer* pServer) override {
    g_deviceConnected = false;
    BLEDevice::startAdvertising();
  }
};

class RxCallbacks : public BLECharacteristicCallbacks {
  void onWrite(BLECharacteristic* pCharacteristic) override {
    // FIX: Some ESP32 Arduino BLE implementations return Arduino String here
    String rx = pCharacteristic->getValue();
    if (rx.length() == 0) return;

    // Accept any stream; scan for button codes.
    // You can send "L", or "L\n", or "LRUDC"
    for (int i = 0; i < rx.length(); i++) {
      char c = rx[i];
      if (!isCmdChar(c)) continue;
      char cmd = normCmd(c);

      sendFpgaButton(cmd);

      // Optional echo back
      String msg = "BTN ";
      msg += cmd;
      msg += "\n";
      bleNotify(msg);
    }
  }
};

// -------------------- Setup BLE UART --------------------
static void setupBleUart() {
  BLEDevice::init(BLE_NAME);

  BLEServer* server = BLEDevice::createServer();
  server->setCallbacks(new ServerCallbacks());

  BLEService* service = server->createService(UART_SERVICE_UUID);

  // TX (notify)
  g_txChar = service->createCharacteristic(
    UART_TX_UUID,
    BLECharacteristic::PROPERTY_NOTIFY
  );
  g_txChar->addDescriptor(new BLE2902());

  // RX (write)
  BLECharacteristic* rxChar = service->createCharacteristic(
    UART_RX_UUID,
    BLECharacteristic::PROPERTY_WRITE | BLECharacteristic::PROPERTY_WRITE_NR
  );
  rxChar->setCallbacks(new RxCallbacks());

  service->start();

  BLEAdvertising* adv = BLEDevice::getAdvertising();
  adv->addServiceUUID(UART_SERVICE_UUID);
  adv->setScanResponse(true);
  adv->start();
}

// -----------------------------------------------------

void setup() {
  Serial.begin(115200);

  // UART to FPGA
  Serial2.begin(FPGA_BAUD, SERIAL_8N1, PIN_UART_RX, PIN_UART_TX);

  setupBleUart();
  setupWifiAndTime();

  bleNotify("Ready. Send L/R/U/D/C.\n");

  // Sync time ONCE on boot (with short retry window)
  syncTimeOnBootWithRetry(8000);
}

void loop() {
  // 1) If Basys3 sends 'G' => sync time ON DEMAND
  while (Serial2.available()) {
    char c = (char)Serial2.read();
    if (c == 'G') {
      syncTimeToFpgaOnce();
    }
  }

  // 2) Optional: also accept USB Serial commands (quick test from PC)
  while (Serial.available()) {
    char c = (char)Serial.read();
    if (isCmdChar(c)) {
      char cmd = normCmd(c);
      sendFpgaButton(cmd);
      Serial.print("Sent BTN ");
      Serial.println(cmd);
    }
  }

  delay(5);
}
