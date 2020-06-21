import 'dart:async';

import 'package:flutter/services.dart';

class FlutterStatusBarColor {
  static const MethodChannel _channel =
      const MethodChannel('flutter_status_bar_color');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
