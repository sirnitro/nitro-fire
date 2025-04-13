# Pellet Grill Web Controller

A smart pellet grill controller powered by the **Arduino Uno R4 WiFi**. This system controls the auger, burner, and blower while monitoring grill and pellet levels. It features both a local web interface and cloud integration with support for Alexa, predictive pellet refill alerts, auto smoke modes, and a mobile app.

---

## Features

- **Temperature Monitoring**
  - Grill, meat, and ambient temperature support
- **Relay Control**
  - Automate auger, burner, and blower based on desired temperature
- **OLED Status Display**
  - Live status updates on a compact screen
- **Pellet Level Monitoring**
  - Alerts and forecasting for pellet refills
- **LED Indicators**
  - Visual cue for each relay’s status
- **Local Controls**
  - Manual override with buttons or rotary encoder
- **Web Interface**
  - Adjust temperature and view status remotely
- **Server Integration**
  - Upload data to cloud dashboard
- **Advanced Features**
  - Alexa integration
  - Auto smoke modes (Low & Slow, Sear, etc.)
  - Predictive pellet refill alerts
  - Mobile app with real-time updates and push notifications

---

## Hardware Overview

| Component               | Purpose                          |
|------------------------|----------------------------------|
| Arduino Uno R4 WiFi    | Central microcontroller          |
| MAX6675 + K-Type Probe | High-temp grill monitoring       |
| DS18B20 Sensors         | Meat/internal temperature        |
| Load Cell + HX711      | Pellet level monitoring          |
| OLED I2C Display       | Status feedback                  |
| 3-Channel Relay Board  | Control auger, blower, burner    |
| LEDs                   | Relay status indicators          |
| Button/Encoder         | Local input interface            |
| WiFi                   | Web server and remote comms      |

---

## Folder Structure

