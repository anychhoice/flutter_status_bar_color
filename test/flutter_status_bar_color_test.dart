import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_status_bar_color/flutter_status_bar_color.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_status_bar_color');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterStatusBarColor.platformVersion, '42');
  });
}
