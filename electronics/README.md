# 🔌 Pellet Grill Controller – Wiring Guide (Arduino Uno R4 WiFi)

This guide outlines the wiring connections between the Arduino Uno R4 WiFi and all peripherals used in the pellet grill control system.

---

## 📋 Table of Contents
- [Power & Board](#power--board)
- [Temperature Sensors](#temperature-sensors)
- [Pellet Level Sensor (Ultrasonic)](#pellet-level-sensor-ultrasonic)
- [Relay Control Module](#relay-control-module)
- [Display & Feedback](#display--feedback)
- [User Inputs](#user-inputs)
- [Optional Components](#optional-components)

---

## 🔌 Power & Board

| Component     | Pin         | Description            |
|---------------|-------------|------------------------|
| Uno R4 Input  | Barrel Jack | 5V regulated supply    |
| Common Ground | GND         | Shared by all devices  |

---

## 🌡️ Temperature Sensors

### MAX6675 (K-Type Thermocouple)
| MAX6675 Pin | Arduino Pin | Description         |
|-------------|-------------|---------------------|
| VCC         | 5V          | Power               |
| GND         | GND         | Ground              |
| SCK         | D13         | SPI Clock           |
| CS          | D10         | Chip Select         |
| SO          | D12         | SPI MISO            |

### DS18B20 (Meat/Internal Temp)
| DS18B20 Pin | Arduino Pin | Description         |
|-------------|-------------|---------------------|
| VCC         | 5V          | Power               |
| GND         | GND         | Ground              |
| DATA        | D2          | 1-Wire Data (with 4.7kΩ pull-up to 5V) |

---

## 📏 Pellet Level Sensor (Ultrasonic HC-SR04)

| HC-SR04 Pin | Arduino Pin | Description         |
|-------------|-------------|---------------------|
| VCC         | 5V          | Power               |
| GND         | GND         | Ground              |
| Trig        | D7          | Trigger             |
| Echo        | D6          | Echo Return         |

---

## ⚙️ Relay Control Module (4-Channel, Opto-Isolated)

| Relay Pin  | Arduino Pin | Function             |
|------------|-------------|----------------------|
| IN1        | D3          | Relay 1 - Auger      |
| IN2        | D4          | Relay 2 - Burner     |
| IN3        | D5          | Relay 3 - Blower     |
| IN4        | D8          | Relay 4 - Reserved   |
| VCC        | 5V          | Module Power         |
| GND        | GND         | Ground               |

---

## 📺 Display & Feedback

### SSD1306 OLED (I2C, 128x64)
| OLED Pin | Arduino Pin | Description         |
|----------|-------------|---------------------|
| SDA      | A4          | I2C Data            |
| SCL      | A5          | I2C Clock           |
| VCC      | 3.3V        | Power               |
| GND      | GND         | Ground              |

### Status LEDs
| LED       | Arduino Pin | Description                |
|-----------|-------------|----------------------------|
| Power RGB | D0, D9, D11 | Blue (cooling), Yellow (heating), Green (ready) |
| Relay 1   | D22         | Auger Status              |
| Relay 2   | D23         | Burner Status             |
| Relay 3   | D24         | Blower Status             |
| Relay 4   | D25         | Reserved Relay Status     |

> 💡 Use 220Ω resistors for each LED.

---

## ⌨️ User Inputs

### Pushbutton
| Button Pin | Arduino Pin | Notes                   |
|------------|-------------|-------------------------|
| Signal     | A0          | Use pull-down resistor  |

---

## 🎵 Optional Components

### Buzzer
| Buzzer Pin | Arduino Pin | Notes            |
|------------|-------------|------------------|
| Signal     | D26          | For alerts       |

### SD Card Module (SPI)
| SD Card Pin | Arduino Pin | Description     |
|-------------|-------------|-----------------|
| CS          | D53         | Chip Select     |
| MOSI        | D51         | SPI MOSI        |
| MISO        | D50         | SPI MISO        |
| SCK         | D52         | SPI Clock       |
| VCC         | 5V          | Power           |
| GND         | GND         | Ground          |

---

## 🧰 Notes

- All grounds must be connected together (common ground).
- Consider adding inline fuses or TVS protection for high-heat environments.
- Use breadboard or terminal blocks for prototyping, then migrate to PCB or perf board.

