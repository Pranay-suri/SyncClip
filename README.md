# SyncClip

SyncClip is a Flutter-based clipboard sharing prototype designed to demonstrate
sharing text, messages, and code between users through temporary rooms.

## Project Description

SyncClip allows a user to create a room and share a Room ID with another user.
The room interface allows the shared content to be viewed and copied.

The current version is a frontend prototype developed using Flutter and
demonstrates the Flutter concepts covered up to Experiment 4(b).

## Features

- Send text, messages, and code
- Automatically generate a temporary Room ID
- Create a custom Room ID
- Select room duration
- Join an existing room using a Room ID
- View shared content
- Copy shared content to the clipboard
- Read-only room interface
- Responsive interface for different screen sizes
- Named route navigation

## Technologies Used

- Flutter
- Dart
- Material Design
- Flutter Navigator
- MediaQuery
- Clipboard API

## Project Structure

```text
lib/
├── main.dart
├── screens/
│   ├── home_screen.dart
│   ├── send_screen.dart
│   ├── custom_room_screen.dart
│   ├── join_room_screen.dart
│   └── room_screen.dart
└── experiments/
    ├── exp1.dart
    ├── exp2a.dart
    ├── exp2b.dart
    ├── exp3a.dart
    ├── exp3b.dart
    ├── exp4a.dart
    └── exp4b.dart



    ## Flutter Concepts Demonstrated

### Experiment 1
Dart programming basics.

### Experiment 2(a)
Flutter widgets and basic user interface construction.

### Experiment 2(b)
Row, Column, and Stack layouts.

### Experiment 3(a)
Responsive Flutter user interfaces.

### Experiment 3(b)
MediaQuery and screen-size breakpoints.

### Experiment 4(a)
Navigator push and pop operations.

### Experiment 4(b)
Named routes using `initialRoute`, `routes`, and
`Navigator.pushNamed()`.

## How to Run

Clone the repository and open the project in a Flutter-supported IDE.

Run:

```bash
flutter pub get
flutter run