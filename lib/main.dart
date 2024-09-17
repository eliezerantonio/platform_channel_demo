import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platform_channel_demo/screens/home_screen.dart';
import 'package:platform_channel_demo/screens/request_screen.dart';
import 'package:platform_channel_demo/screens/splash_screen.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: "/",
      routes: {
        "home": (_) => const HomeScreen(),
        "/": (_) => const SplashScreen(),
        "request": (_) => const RequestScreen(),
      },
    );
  }
}
