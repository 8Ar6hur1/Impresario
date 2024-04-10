import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isUserRegistered = false;

    Future.delayed(const Duration(seconds: 0), () {
      if (isUserRegistered) {
        Navigator.pushNamed(context, '/LogicScreen');
      } else {
        Navigator.pushNamed(context, '/PreviewScreen');
      }
    });

    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFFF4E6FF),
          body: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: const Center(
              child: Text(
                "Impresario",
                style: TextStyle(
                    fontFamily: 'StyleScript',
                    fontSize: 67.0,
                    color: Colors.black),
              ),
            ),
          )),
    );
  }
}
