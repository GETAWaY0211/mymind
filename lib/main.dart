import 'package:emotion/splash.dart';
import 'package:flutter/material.dart';
import 'presign.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Flutter App',
      initialRoute: '/',
      routes: {
        Splash.routeName: (context) => const Splash(),
      },
    );
  }
}
