#include <WiFi.h>
#include <time.h>

// ================== WIFI ==================
const char* WIFI_SSID = "iQOO Neo9";
const char* WIFI_PASS = "12345678";

// ================== NTP ==================
const char* NTP1 = "pool.ntp.org";
const char* NTP2 = "time.google.com";

// UTC+7 (VN/Thailand). Không DST.
static const long  GMT_OFFSET_SEC      = 7L * 3600L;
static const int   DAYLIGHT_OFFSET_SEC = 0;

// (Tuỳ chọn) TZ string. Giữ lại để log hiển thị "ICT"
const char* TZ_INFO = "ICT-7";

// ================== UART to BASYS3 ==================
static const uint32_t UART_BAUD = 115200;

// Sửa theo wiring của bạn
static const int UART_TX_PIN = 17;  // ESP32 -> Basys3 RX
static const int UART_RX_PIN = 18;  // Basys3 TX -> ESP32 (optional)

// Serial: log ra Arduino IDE
// Serial1: UART sang Basys3
HardwareSerial& UartToBasys = Serial1;

// ================== APP ==================
// Basys3 gửi 1 byte 'G' (Get time) -> ESP32 trả về packet: "T%02d%02d\n"
static bool boot_pushed = false;   // ✅ chỉ push 1 lần khi ESP32 khởi động (sau khi sync được time)

bool syncTimeOnce() {
  // Set timezone (để getLocalTime() trả đúng local time)
  setenv("TZ", TZ_INFO, 1);
  tzset();

  // CÁCH CHẮC ĂN: dùng GMT_OFFSET_SEC (UTC+7) thay vì chỉ dựa vào TZ string
  configTime(GMT_OFFSET_SEC, DAYLIGHT_OFFSET_SEC, NTP1, NTP2);

  Serial.println("[NTP] Waiting for time sync...");
  struct tm timeinfo;

  for (int i = 0; i < 40; i++) { // ~40 * 300ms = 12s
    if (getLocalTime(&timeinfo, 300)) {
      // Nhiều board trả về timeinfo "rác" khi chưa sync; kiểm tra năm >= 2020
      if (timeinfo.tm_year < (2020 - 1900)) {
        Serial.print("!");
        continue;
      }

      char localBuf[64];
      strftime(localBuf, sizeof(localBuf), "%Y-%m-%d %H:%M:%S %Z", &timeinfo);

      // In thêm UTC để bạn so sánh nhanh
      time_t now = time(nullptr);
      struct tm utcinfo;
      gmtime_r(&now, &utcinfo);
      char utcBuf[64];
      strftime(utcBuf, sizeof(utcBuf), "%Y-%m-%d %H:%M:%S UTC", &utcinfo);

      Serial.print("[NTP] Synced Local: ");
      Serial.println(localBuf);
      Serial.print("[NTP] Synced UTC : ");
      Serial.println(utcBuf);

      return true;
    }

    Serial.print(".");
    delay(300);
  }

  Serial.println();
  Serial.println("[NTP] Sync FAILED");
  return false;
}

void connectWiFi() {
  Serial.printf("[WIFI] Connecting to: %s\n", WIFI_SSID);

  WiFi.mode(WIFI_STA);
  WiFi.begin(WIFI_SSID, WIFI_PASS);

  uint8_t retry = 0;
  while (WiFi.status() != WL_CONNECTED) {
    delay(400);
    Serial.print(".");
    retry++;

    if (retry >= 40) { // ~16s
      Serial.println();
      Serial.println("[WIFI] Connect timeout -> retry WiFi.begin()");
      WiFi.disconnect(true);
      delay(300);
      WiFi.begin(WIFI_SSID, WIFI_PASS);
      retry = 0;
    }
  }

  Serial.println();
  Serial.print("[WIFI] Connected. IP: ");
  Serial.println(WiFi.localIP());
  Serial.print("[WIFI] RSSI: ");
  Serial.println(WiFi.RSSI());
}

void sendHHMMToBasysNow() {
  struct tm timeinfo;
  if (!getLocalTime(&timeinfo, 50)) {
    Serial.println("[TIME] getLocalTime FAILED (will resync NTP)");
    syncTimeOnce();
    return;
  }

  if (timeinfo.tm_year < (2020 - 1900)) {
    Serial.println("[TIME] Time not valid yet (year < 2020) -> resync");
    syncTimeOnce();
    return;
  }

  int hh = timeinfo.tm_hour;
  int mm = timeinfo.tm_min;

  // Packet: 'T' + HHMM + '\n'
  char pkt[8];
  snprintf(pkt, sizeof(pkt), "T%02d%02d\n", hh, mm);

  UartToBasys.print(pkt);
  Serial.print("[UART] TX -> BASYS3: ");
  Serial.print(pkt); // có '\n' sẵn
}

void setup() {
  Serial.begin(115200);
  delay(200);
  Serial.println("==== ESP32-S3-CAM NTP (UTC+7) -> UART to Basys3 ====");

  UartToBasys.begin(UART_BAUD, SERIAL_8N1, UART_RX_PIN, UART_TX_PIN);
  Serial.printf("[UART] Serial1 begin baud=%lu, RX=%d, TX=%d\n",
                (unsigned long)UART_BAUD, UART_RX_PIN, UART_TX_PIN);

  connectWiFi();

  if (syncTimeOnce()) {
    // ✅ Push 1 lần khi vừa sync được time (ESP32 boot)
    delay(800);                 // cho Basys3 UART ổn định (tuỳ chọn)
    sendHHMMToBasysNow();
    boot_pushed = true;
  } else {
    Serial.println("[BOOT] NTP sync failed. Will keep trying in loop.");
  }
}

void loop() {
  // Nếu WiFi rớt thì nối lại
  if (WiFi.status() != WL_CONNECTED) {
    Serial.println("[WIFI] Disconnected -> reconnect");
    connectWiFi();
    syncTimeOnce();
  }

  // ✅ Nếu boot lúc đầu chưa sync được -> khi nào sync OK thì push đúng 1 lần
  if (!boot_pushed) {
    struct tm timeinfo;
    if (getLocalTime(&timeinfo, 10) && timeinfo.tm_year >= (2020 - 1900)) {
      delay(200);
      sendHHMMToBasysNow();
      boot_pushed = true;
    }
  }

  // Giữ nguyên chức năng: chỉ gửi giờ khi Basys3 yêu cầu
  while (UartToBasys.available()) {
    int c = UartToBasys.read();
    Serial.printf("[UART] RX <- BASYS3: 0x%02X '%c'\n",
                  (unsigned)c, (c >= 32 && c <= 126) ? c : '.');

    if (c == 'G') {
      sendHHMMToBasysNow(); // vẫn giữ nguyên
    }
  }

  delay(20);
}
