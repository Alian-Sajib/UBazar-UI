import 'dart:async';
import 'package:flutter/material.dart';
import 'onboarding_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {'home': (context) => OnBoardingScreen()},
    );
  }
}

//Creating a splash screen

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void startTimer() {
    //splash screen appear for 4 sec
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacementNamed('home');
    });
  }

  Color scaffoldBackgroundColor = Color(0x52DC705);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: Center(child: Image.asset('assets/images/splash.png')),
    );
  }
}
