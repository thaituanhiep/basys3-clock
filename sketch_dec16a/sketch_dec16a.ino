/*
  ESP32-S3 (BLE) -> Basys3 UART Remote Buttons + Online Time
  UPDATED: Send HH MM SS to FPGA
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

// Serial2 pins
static const int PIN_UART_TX = 17;
static const int PIN_UART_RX = 18;

// BLE device name
static const char* BLE_NAME = "Basys3-Clock-Remote";
// -----------------------------------------------------

// Nordic UART Service UUIDs
static BLEUUID UART_SERVICE_UUID("6E400001-B5A3-F393-E0A9-E50E24DCCA9E");
static BLEUUID UART_RX_UUID     ("6E400002-B5A3-F393-E0A9-E50E24DCCA9E");
static BLEUUID UART_TX_UUID     ("6E400003-B5A3-F393-E0A9-E50E24DCCA9E");

static BLECharacteristic* g_txChar = nullptr;
static bool g_deviceConnected = false;

// -------------------- Helpers --------------------
static inline bool isCmdChar(char c) {
  return (c=='L'||c=='R'||c=='U'||c=='D'||c=='C'||
          c=='l'||c=='r'||c=='u'||c=='d'||c=='c');
}

static inline char normCmd(char c) {
  if (c >= 'a' && c <= 'z') return char(c - 'a' + 'A');
  return c;
}

// ★ NEW: Send HH MM SS
static void sendFpgaTimeHHMMSS(uint8_t hh, uint8_t mm, uint8_t ss) {
  char buf[12];
  // Example: T093745\n
  snprintf(buf, sizeof(buf), "T%02u%02u%02u\n",
           (unsigned)hh, (unsigned)mm, (unsigned)ss);
  Serial2.write((const uint8_t*)buf, strlen(buf));
}

static void sendFpgaButton(char codeUpper) {
  char buf[4];
  buf[0] = 'B';
  buf[1] = codeUpper;
  buf[2] = '\n';
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

  configTime(GMT_OFFSET_SEC, DAYLIGHT_OFFSET_SEC,
             "pool.ntp.org", "time.nist.gov");
}

// ★ NEW: HH MM SS
static bool getLocalHHMMSS(uint8_t &hh, uint8_t &mm, uint8_t &ss) {
  struct tm timeinfo;
  if (!getLocalTime(&timeinfo, 2000)) return false;
  hh = (uint8_t)timeinfo.tm_hour;
  mm = (uint8_t)timeinfo.tm_min;
  ss = (uint8_t)timeinfo.tm_sec;
  return true;
}

// Sync time once (on demand)
static void syncTimeToFpgaOnce() {
  uint8_t hh, mm, ss;
  if (getLocalHHMMSS(hh, mm, ss)) {
    sendFpgaTimeHHMMSS(hh, mm, ss);

    String msg = "TIME_SYNC ";
    msg += String(hh);
    msg += ":";
    if (mm < 10) msg += "0";
    msg += String(mm);
    msg += ":";
    if (ss < 10) msg += "0";
    msg += String(ss);
    msg += "\n";

    bleNotify(msg);
    Serial.print(msg);
  } else {
    bleNotify("Time not ready.\n");
    Serial.println("Time not ready.");
  }
}

// Sync once on boot (retry window)
static void syncTimeOnBootWithRetry(uint32_t maxWaitMs = 8000) {
  uint32_t start = millis();
  while (millis() - start < maxWaitMs) {
    uint8_t hh, mm, ss;
    if (getLocalHHMMSS(hh, mm, ss)) {
      sendFpgaTimeHHMMSS(hh, mm, ss);

      String msg = "TIME_BOOT ";
      msg += String(hh);
      msg += ":";
      if (mm < 10) msg += "0";
      msg += String(mm);
      msg += ":";
      if (ss < 10) msg += "0";
      msg += String(ss);
      msg += "\n";

      bleNotify(msg);
      Serial.print(msg);
      return;
    }
    delay(250);
  }

  bleNotify("Time not ready on boot. Press BTNC later to sync.\n");
  Serial.println("Time not ready on boot.");
}

// -------------------- BLE Callbacks --------------------
class ServerCallbacks : public BLEServerCallbacks {
  void onConnect(BLEServer*) override {
    g_deviceConnected = true;
    bleNotify("Connected. Send L/R/U/D/C.\n");
  }
  void onDisconnect(BLEServer*) override {
    g_deviceConnected = false;
    BLEDevice::startAdvertising();
  }
};

class RxCallbacks : public BLECharacteristicCallbacks {
  void onWrite(BLECharacteristic* pCharacteristic) override {
    String rx = pCharacteristic->getValue();
    for (int i = 0; i < rx.length(); i++) {
      if (!isCmdChar(rx[i])) continue;
      char cmd = normCmd(rx[i]);
      sendFpgaButton(cmd);
      bleNotify(String("BTN ") + cmd + "\n");
    }
  }
};

// -------------------- BLE Setup --------------------
static void setupBleUart() {
  BLEDevice::init(BLE_NAME);

  BLEServer* server = BLEDevice::createServer();
  server->setCallbacks(new ServerCallbacks());

  BLEService* service = server->createService(UART_SERVICE_UUID);

  g_txChar = service->createCharacteristic(
    UART_TX_UUID,
    BLECharacteristic::PROPERTY_NOTIFY
  );
  g_txChar->addDescriptor(new BLE2902());

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

// -------------------- Arduino --------------------
void setup() {
  Serial.begin(115200);
  Serial2.begin(FPGA_BAUD, SERIAL_8N1, PIN_UART_RX, PIN_UART_TX);

  setupBleUart();
  setupWifiAndTime();

  bleNotify("Ready. Send L/R/U/D/C.\n");

  syncTimeOnBootWithRetry(8000);
}

void loop() {
  // FPGA requests sync by sending 'G'
  while (Serial2.available()) {
    if ((char)Serial2.read() == 'G') {
      syncTimeToFpgaOnce();
    }
  }

  delay(5);
}
