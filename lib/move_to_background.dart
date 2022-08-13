/// This library is a wrapper for iOS and Android to send the application to the background programmatically.
import 'move_to_background_platform_interface.dart';

/// A class containing the static function used.
class MoveToBackground {
  /// Calls the platform-specific function to send the app to the background
  static Future moveTaskToBack() async {
    await MoveToBackgroundPlatform.instance.moveTaskToBack();
  }
}
