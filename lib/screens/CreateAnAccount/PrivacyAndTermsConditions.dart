
import 'package:flutter/material.dart';

class PrivacyAndTermsConditions extends StatelessWidget {
  const PrivacyAndTermsConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF4E6FF),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 35),
                child: Text(
                  'Privacy and Terms & Conditions',
                  style: TextStyle(
                      fontSize: 49,
                      fontFamily: 'StyleScript',
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
