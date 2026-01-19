# Basys3 Clock: Remote Buttons via ESP32-S3 BLE + UART

## What this adds
You can "press" BTNL/BTNR/BTNU/BTND/BTNC from a Bluetooth-connected ESP32-S3.
It does NOT change your Basys3 FSM logic. It only injects the same button pulses.

## UART protocol (ESP32 -> Basys3)
- Time sync:
  - `T` + HH + MM + `\n`
  - Example: `T0937\n`

- Remote button press:
  - `B` + code + `\n`
  - code: `L R U D C`
  - Example: `BL\n` (press left), `BC\n` (press center)

## BLE side (ESP32-S3)
ESP32-S3 supports BLE (not Classic SPP).
Sketch implements Nordic UART Service (NUS):

- Service UUID: 6E400001-B5A3-F393-E0A9-E50E24DCCA9E
- RX (Write):    6E400002-B5A3-F393-E0A9-E50E24DCCA9E
- TX (Notify):   6E400003-B5A3-F393-E0A9-E50E24DCCA9E

Use a generic BLE UART terminal:
- nRF Connect (Android/iOS)
- any "BLE UART" terminal that can write to RX characteristic

Send characters: `L R U D C` (upper/lower ok). ESP32 forwards to FPGA as `B<code>\n`.

## Files changed
- `top.v`: ORs remote pulses with debounced physical button pulses, and wires new parser outputs.
- `time_uart_parser.v`: supports time packets + button packets.
- `sketch_dec16a.ino`: adds BLE UART to accept remote commands and forward to FPGA.

## Integration steps
1. Replace your project files with the ones in this zip (keep other modules unchanged).
2. Rebuild bitstream in Vivado.
3. Flash ESP32-S3 with the provided Arduino sketch (set WiFi SSID/pass + UART pins).
4. Pair/connect BLE to `Basys3-Clock-Remote` and send `L/R/U/D/C`.
