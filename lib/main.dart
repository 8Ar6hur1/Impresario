import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:impresario/screens/CreateAnAccount/CreateAccountScreen.dart';
import 'package:impresario/screens/CreateAnAccount/LoginScreen.dart';
import 'package:impresario/screens/CreateAnAccount/PrivacyAndTermsConditions.dart';
import 'package:impresario/screens/CreateAnAccount/RegistrationScreen.dart';
import 'package:impresario/screens/PreviewScreen.dart';
import 'package:impresario/screens/SplashScreen.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent));

  runApp(MaterialApp(
    theme: ThemeData(
        primaryColor: const Color(0xFFF4E6FF),
        textTheme: const TextTheme(
          displaySmall: TextStyle(fontSize: 30, fontFamily: 'StyleScript'),
        )),
    home: Scaffold(
      appBar: AppBar(),
    ),
    routes: {
      '/SplashScreen': (context) => const SplashScreen(),
      '/PreviewScreen': (context) => const PreviewScreen(),
      '/LogicScreen': (context) => const LoginScreen(),
      '/RegistrationScreen': (context) => const RegistrationScreen(),
      '/PrivacyAndTermsConditions': (context) =>
          const PrivacyAndTermsConditions(),
      '/CreateAccountScreen': (context) => const CreateAccountScreen(),
    },
    initialRoute: '/SplashScreen',
  ));
}
