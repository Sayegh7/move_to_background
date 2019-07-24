# Example App

```dart
import 'package:flutter/material.dart';

import 'package:move_to_background/move_to_background.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        MoveToBackground.moveTaskToBack();
        return false;
      },
      child: MaterialApp(
        home: Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.arrow_downward),
            onPressed: () {
              MoveToBackground.moveTaskToBack();
            },
          ),
          appBar: AppBar(
            title: const Text('MoveToBackground Example'),
          ),
          body: Center(
            child: Text('Press the floating action button'),
          ),
        ),
      ),
    );
  }
}
```
