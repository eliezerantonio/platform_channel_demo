import 'package:flutter/services.dart';

enum PermissionStatus { unknown, granted, denied, restricted }

class Geolocation {
  Geolocation.internal();

  static final Geolocation _instance = Geolocation.internal();
  static Geolocation get instance => _instance;

  final _channel = const MethodChannel("com.eliezerantonio/geolocation");

  Future<PermissionStatus> checkPermission() async {
    final result = await _channel.invokeMethod<String>("check");

    switch (result) {
      case "granted":
        return PermissionStatus.granted;

      case "denied":
        return PermissionStatus.denied;
      default:
        return PermissionStatus.unknown;
    }
  }

  requestPermission() {}

  start() async {}

  stop() async {}
}
