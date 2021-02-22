
import 'dart:async';

import 'package:flutter/services.dart';

class MefunCamera {
  static const MethodChannel _channel =
      const MethodChannel('mefun_camera');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
