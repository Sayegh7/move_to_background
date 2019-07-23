import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:move_to_background/move_to_background.dart';

void main() {
  const MethodChannel channel = MethodChannel('move_to_background');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  // test('getPlatformVersion', () async {
  //   expect(await MoveToBackground.platformVersion, '42');
  // });
}
