import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platform_channel_demo/native/geolocation.dart';
import 'package:platform_channel_demo/providers/splash_provider.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () async {
      final result = ref.read(checkPermissionProvider);

      if (!mounted) return;
      if (result.value != PermissionStatus.granted) {
        goTo('request');
        return;
      }
      goTo("home");
    });
  }

  void goTo(String path) {
    Navigator.pushReplacementNamed(context, path);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
