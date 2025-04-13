# Pellet Grill Web Controller Project Roadmap

A web-connected controller for a pellet grill using an Arduino Uno R4 WiFi. It monitors and controls temperature, pellet levels, and fan/auger/burner cycles with both a local and web interface. Includes future enhancements for Alexa, predictive refills, and mobile control.

---

## Phase 1: Planning & Requirements

- [ ] Define functional requirements
- [ ] Create system diagram (sensors, relays, display, controller)
- [ ] Select all hardware components
- [ ] Build a complete bill of materials (BOM)

---

## Phase 2: Hardware Prototyping

- [ ] Wire temperature sensors (MAX6675, DS18B20)
- [ ] Wire relay module (Auger, Burner, Blower)
- [ ] Wire LED indicators for each relay
- [ ] Setup pellet level sensor (load cell or ultrasonic)
- [ ] Connect OLED display
- [ ] Test individual component functionality

---

## Phase 3: Firmware Development

- [ ] Read temperature and pellet level sensors
- [ ] Write relay control logic
- [ ] Implement safety cutoffs and thresholds
- [ ] Display data on OLED
- [ ] Add local controls (buttons or rotary encoder)
- [ ] Setup WiFi and onboard web server

---

## Phase 4: Web Interface (Local)

- [ ] Design HTML/CSS/JS dashboard
- [ ] Display real-time grill stats (temp, pellet level, relay status)
- [ ] Enable remote temp adjustments and mode selection

---

## Phase 5: Server Integration (Optional)

- [ ] Choose and configure backend (PHP, Firebase, MQTT, etc.)
- [ ] Upload temp and status data to server
- [ ] Create cloud dashboard for logs and remote control

---

## Phase 6: Enclosure & Mounting

- [ ] Design physical layout
- [ ] Build or print weather-resistant enclosure
- [ ] Secure components and wire for long-term use

---

## Phase 7: Testing & Tuning

- [ ] Simulate dry run (no fire)
- [ ] Perform live burn test
- [ ] Tune timing and temperature logic
- [ ] Conduct failover testing (sensor unplug, auger jam, etc.)

---

## Phase 8: Finalization & Documentation

- [ ] Create user manual and troubleshooting guide
- [ ] Build a finalized wiring diagram
- [ ] Backup firmware, diagrams, and UI code to GitHub

---

## Phase 9: Advanced Features (Phase 2 Rollout)

- [ ] Alexa Integration
  - Build custom Alexa Skill
  - AWS Lambda function for controlling grill
- [ ] Predictive Pellet Refills
  - Use usage history and level sensor to forecast pellet exhaustion
  - Send alerts via web + mobile
- [ ] Auto Smoke Modes
  - Define presets like “Low & Slow”, “Sear”, etc.
  - Adjust fan, burner, and auger patterns accordingly
- [ ] Mobile App
  - Create React Native or Flutter app
  - Mirror web interface for monitoring and control
- [ ] Push Notifications
  - Grill ready, pellet low, meat done, alert system integration

---

## Notes

- Primary microcontroller: **Arduino Uno R4 WiFi**
- External modules: MAX6675, DS18B20, Load Cell or HC-SR04, OLED, Relay board, LEDs
- Web stack: Local HTML interface + optional cloud API
- Stretch goals: Mobile app, Alexa voice control, smart smoke profiles

