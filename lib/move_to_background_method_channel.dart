import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'move_to_background_platform_interface.dart';

/// An implementation of [MoveToBackgroundPlatform] that uses method channels.
class MethodChannelMoveToBackground extends MoveToBackgroundPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('move_to_background');

  @override
  Future moveTaskToBack() async {
    await methodChannel.invokeMethod<void>('moveTaskToBack');
  }
}
