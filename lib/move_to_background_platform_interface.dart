import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'move_to_background_method_channel.dart';

abstract class MoveToBackgroundPlatform extends PlatformInterface {
  /// Constructs a MoveToBackgroundPlatform.
  MoveToBackgroundPlatform() : super(token: _token);

  static final Object _token = Object();

  static MoveToBackgroundPlatform _instance = MethodChannelMoveToBackground();

  /// The default instance of [MoveToBackgroundPlatform] to use.
  ///
  /// Defaults to [MethodChannelMoveToBackground].
  static MoveToBackgroundPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MoveToBackgroundPlatform] when
  /// they register themselves.
  static set instance(MoveToBackgroundPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> moveTaskToBack() {
    throw UnimplementedError('moveTaskToBack() has not been implemented.');
  }
}
