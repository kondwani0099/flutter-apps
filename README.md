
# Flutter IoT LED Control with Firebase

This repository contains a **Flutter** project for controlling LEDs using **Firebase**. It’s designed for workshops where participants learn to build a simple IoT system by connecting a Flutter app to a hardware device (like an Arduino or ESP8266) and controlling it via a Firebase backend.

## Table of Contents
- [Overview](#overview)
- [Setup Instructions](#setup-instructions)
- [Firebase Setup](#firebase-setup)
- [Running the Project](#running-the-project)
- [How to Contribute](#how-to-contribute)
- [License](#license)

## Overview

This project demonstrates how to use a Flutter app to remotely turn LEDs on and off through an IoT device. The app communicates with Firebase, and the IoT device listens for real-time updates to control the LEDs.

## Setup Instructions

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/flutter-iot-led-firebase.git
   ```
2. Navigate into the project directory:
   ```bash
   cd flutter-iot-led-firebase
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```

## Firebase Setup

1. Create a new Firebase project in the [Firebase Console](https://console.firebase.google.com/).
2. Enable **Realtime Database** in Firebase and set up rules for public access (for demo purposes):
   ```json
   {
     "rules": {
       ".read": "true",
       ".write": "true"
     }
   }
   ```
3. Add your Firebase configuration to the Flutter app by updating the `google-services.json` (for Android) or `GoogleService-Info.plist` (for iOS) in the project.

## Running the Project

1. Connect a device or use an emulator.
2. Run the app with the following command:
   ```bash
   flutter run
   ```
3. The app allows you to turn an LED on and off. It sends commands to Firebase, and the IoT device listens for changes to execute the command.

## How to Contribute

1. Fork this repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -m 'Add your feature'`).
4. Push the branch (`git push origin feature/your-feature`).
5. Open a Pull Request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

