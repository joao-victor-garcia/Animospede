import 'package:flutter/material.dart';
import 'dart:async';
import 'login.dart';

class SplashPage extends StatelessWidget  {
  const SplashPage({Key? key}) : super(key: key);   

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const LoginPage(title: 'Animóspede')),
        );
      },
    );

    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(0xFFFF8E54),
            child: Stack(
              children: [
                const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('logo.png')),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Image.asset(
                          'homeIndicator.png',
                          height: 25,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
