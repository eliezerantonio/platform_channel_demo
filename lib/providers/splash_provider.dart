//*Provider

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platform_channel_demo/native/geolocation.dart';

final checkPermissionProvider = FutureProvider<PermissionStatus>((ref) async {
  return await Geolocation.instance.checkPermission();
});




//*Notifier