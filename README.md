

# Flutter App Repository

Welcome to the **Flutter App Repository**! This collection of projects showcases various applications built with Flutter, focusing on IoT integration, real-time data handling, and AI capabilities. The repository is open for contributions, allowing others to learn from and build upon these projects.

## Projects Overview

### 1. LED Firebase Controller
- **Description**: This project allows users to control LEDs using a Firebase backend. It demonstrates how to send commands from a Flutter app to an IoT device, enabling remote control of LED lights.
- **Features**:
  - Real-time LED control via Firebase.
  - Simple and intuitive user interface.

### 2. Arcus Farms IoT Control
- **Description**: A comprehensive app designed for farm management using IoT. This project enables users to monitor and control various aspects of a farm setup, such as soil moisture, temperature, and humidity.
- **Features**:
  - Monitor environmental conditions in real-time.
  - Control irrigation systems and sensors through a Flutter app.

### 3. ChatGPT Integration
- **Description**: This project integrates the OpenAI API to create a chat application using Flutter. Users can interact with ChatGPT for various purposes, including learning and assistance.
- **Features**:
  - Real-time chat functionality.
  - Interactive responses from ChatGPT using the OpenAI API.

## Getting Started

### Prerequisites

- Flutter SDK installed ([Flutter installation guide](https://flutter.dev/docs/get-started/install)).
- An active Firebase project (for projects utilizing Firebase).
- OpenAI API key (for the ChatGPT integration project).

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/kondwani0099/flutter-apps.git
   ```
2. Navigate to the desired project directory:
   ```bash
   cd flutter-app-repo/<project_name>
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

## How to Contribute

We welcome contributions from the community! Here’s how you can help:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Make your changes and add new features.
4. Commit your changes (`git commit -m 'Add new feature'`).
5. Push to your branch (`git push origin feature/your-feature`).
6. Open a Pull Request.

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
