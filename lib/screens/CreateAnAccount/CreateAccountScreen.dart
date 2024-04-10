
import 'package:flutter/material.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4E6FF),
      body: PageView(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        onPageChanged: (int page) {},
        children: [
          Container(),
          Container(),
          Container(),
          Container(),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
