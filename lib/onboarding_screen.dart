import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Intro_page/intro_page1.dart';
import 'Intro_page/intro_page2.dart';
import 'Intro_page/intro_page3.dart';
import 'home.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //Controller to keep track of which page we are on
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Page view
          PageView(
            controller: _controller,
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          //Dot indicators
          Container(
            alignment: Alignment(0, 0.95),
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Skip Button
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomePage();
                        },
                      ),
                    );
                  },
                  //Skip button
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      fontSize: 18,
                      //fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                ),

                //Page Indicator

                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: SlideEffect(
                    activeDotColor: Colors.green,
                    dotHeight: 10,
                    dotColor: Colors.grey,
                    dotWidth: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
