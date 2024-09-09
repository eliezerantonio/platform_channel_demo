import 'package:flutter/material.dart';
import 'package:platform_channel_demo/native/first_native_platform_channel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            final _ = FirstNativePlatformChannel();
            _.version();
          },
          child: const Text("Get Version"),
        ),
      ),
    );
  }
}
