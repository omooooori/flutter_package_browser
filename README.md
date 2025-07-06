# flutter_package_browser

A Flutter application that browses packages from [pub.dev](https://pub.dev).  
This app fetches and displays package listings and their detailed metadata via the public API.

## Features

- Browse the list of packages from pub.dev
- View detailed information about each package (description, versions, publisher)
- Open homepage or repository links in a browser
- Built with Riverpod (state management) and GoRouter (navigation)

## Environment

- Flutter SDK: 3.29.3
- Dart SDK: bundled with Flutter
- Platform: Android / iOS

## Dependencies

- [hooks_riverpod](https://pub.dev/packages/hooks_riverpod)
- [go_router](https://pub.dev/packages/go_router)
- [flutter_hooks](https://pub.dev/packages/flutter_hooks)

## Architecture

This project adopts a simple layered architecture inspired by clean architecture principles.
The structure is organized as follows:

```
lib/
├── features/          # UI and screen logic for each feature
├── infrastructure/    # API clients and data sources
├── domain/            # Models and interfaces (optional)
├── router.dart        # Navigation with GoRouter
├── app.dart           # Root widget
└── main.dart          # App entry point
```

### Why this architecture?

- Separation of concerns: Clear boundaries between UI, state, and data layers
- Scalability: Easy to extend when adding more screens or features
- Testability: Each layer can be tested in isolation
- Familiarity: Follows common Flutter community practices (e.g., Riverpod + GoRouter)

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
