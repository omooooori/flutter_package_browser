# flutter_package_browser

![CI](https://github.com/omooooori/flutter_package_browser/actions/workflows/ci.yaml/badge.svg?branch=master)

A Flutter application that browses packages from [pub.dev](https://pub.dev).  
This app fetches and displays package listings and their detailed metadata via the public API.

## Features

- Browse the list of packages from pub.dev
- View detailed information about each package (description, versions, publisher)
- Open the package page on pub.dev in a browser
- Built with Riverpod (state management) and GoRouter (navigation)

## Environment

- Flutter SDK: 3.32.5
- Dart SDK: bundled with Flutter
- Platform: Android / iOS

## CI

This project uses GitHub Actions for Continuous Integration.

- Runs on every push and pull request to the `master` branch
- Builds for Web, Android, and iOS using Flutter 3.32.5
- Each job runs `flutter pub get` and builds the app for its target platform (`flutter build web`, `flutter build apk`, `flutter build ios`)

## Dependencies

- [flutter_riverpod](https://pub.dev/packages/flutter_riverpod)
- [flutter_hooks](https://pub.dev/packages/flutter_hooks)
- [go_router](https://pub.dev/packages/go_router)
- [freezed](https://pub.dev/packages/freezed)
- [build_runner](https://pub.dev/packages/build_runner)

## Architecture

```
lib/
├── features/
│   ├── details/
│   │   ├── view/
│   │   ├── contract/
│   │   └── notifier/
│   ├── home/
│   │   ├── view/
│   │   ├── contract/
│   │   └── notifier/
├── domain/
│   └── models/
├── infrastructure/
│   └── pub_api/
├── theme/
│   └── app_color_scheme.dart
├── router.dart
├── app.dart
└── main.dart
```

## 🔁 Code Generation

This project uses [freezed](https://pub.dev/packages/freezed) and [build_runner](https://pub.dev/packages/build_runner) for code generation.

Use the provided Makefile to run code generation commands:

```bash
# Generate code once
make build

# Watch for changes and regenerate automatically
make watch

# Clean generated files
make clean
```
