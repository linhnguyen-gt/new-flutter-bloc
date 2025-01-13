# new_flutter_bloc

A new Flutter project using BLoC architecture.

## Introduction

This project is a Flutter application utilizing the BLoC architecture for state management. It is designed to provide a clear and scalable project structure for Flutter applications.

## Requirements

- Flutter (latest version)
- Dart SDK >=3.4.3 <4.0.0

## Installation

1. Clone this repository
2. Run `flutter pub get` to install dependencies
3. Create a `.env` file in the project root (see Environment Configuration below)

## Environment Configuration

This project uses a `.env` file to manage environment variables. Make sure to create this file before running the application.

## Running the Application

To run the application in debug mode:

flutter run

## Development

### Rebuild

To regenerate auto-generated files:

flutter pub run build_runner watch

### Git hooks

This project uses [lefthook](https://github.com/evilmartians/lefthook) to manage git hooks. This helps maintain code quality and ensures consistency throughout the development process.

### Architecture and Technology

- State management:
  - [bloc_small](https://pub.dev/packages/bloc_small) - Simplified BLoC implementation
- Navigation: [auto_route](https://pub.dev/packages/auto_route)
- Dependency Injection: [get_it](https://pub.dev/packages/get_it), [injectable](https://pub.dev/packages/injectable)
- HTTP Client: [dio](https://pub.dev/packages/dio)
- Data class generation: [freezed](https://pub.dev/packages/freezed)

## Coding Standards

This project follows the official Dart style guide. I use `dart format` to ensure consistent code formatting. Additionally, I use `dart analyze` to catch potential issues early.
