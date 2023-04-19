import 'package:flutter/material.dart';
class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body :Center(
          child:Image.asset('assets/images/welcome1.jpg')
      ),
    );
  }
}
