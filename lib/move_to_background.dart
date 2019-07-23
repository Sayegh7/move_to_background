import 'dart:async';

import 'package:flutter/services.dart';

class MoveToBackground {
  static const MethodChannel _channel =
      const MethodChannel('move_to_background');

  static Future<void> moveTaskToBack() async {
    await _channel.invokeMethod('moveTaskToBack');
  }
}
