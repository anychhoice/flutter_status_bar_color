import 'dart:async';
import 'dart:ui';

import 'package:flutter/services.dart';

class FlutterStatusBarColor {
  static const MethodChannel _channel =
      const MethodChannel('flutter_status_bar_color');

  static Color getRecommendedStatusBarTextColor(Color color){
    var r = color.red;
    var g = color.green;
    var b = color.blue;

    var luma = 0.2126 * r + 0.7152 * g + 0.0722 * b;

    return luma > 40 ? Color(0xff000000) : Color(0xffffffff);
  }
}
