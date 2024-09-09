import 'dart:developer';

import 'package:flutter/services.dart';

class FirstNativePlatformChannel {
  final MethodChannel _methodChannel = const MethodChannel("com.eliezerantonio/first_platform_channel");

  Future<void> version() async {
    try {
      final result = await _methodChannel.invokeMethod("version", [1, 2, 3, 4, 5, 6, 7, 8, 9]);

      log(result);
    } catch (e) {
      log("Error $e");
    }
  }
}
