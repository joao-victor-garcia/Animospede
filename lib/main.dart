import 'package:animospede/pages/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animóspede',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF8E54),
          primary: const Color(0xFFFF8E54),
        ),
        fontFamily: 'Poppins',
        useMaterial3: true,
      ),
      home: const SplashPage(),
    );
  }
}
