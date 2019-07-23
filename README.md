# move_to_background

Flutter plugin for sending android application to background. Note that currently only android is supported.

## Getting Started

### Install it (pubspec.yaml)

```yaml
move_to_background: ^0.1.2
```

### Import it

```dart
import 'package:move_to_background/move_to_background.dart';
```

### Use it

```dart
MoveToBackground.moveTaskToBack();
```

## Useful Scenario

Use with WillPopScope to send your application to the background when the user attempts to exit the app.

```dart
WillPopScope(
  child: MaterialApp(...),
  onWillPop: () async {
    MoveToBackground.moveTaskToBack();
    return false;
  },
);
```
