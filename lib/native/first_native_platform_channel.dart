import 'dart:developer';

import 'package:flutter/services.dart';

class FirstNativePlatformChannel {
  final MethodChannel _methodChannel = const MethodChannel("com.eliezerantonio/first_platform_channel");

  Future<void> version() async {
    final result = await _methodChannel.invokeMethod("version", {});

    log(result);
  }
}
