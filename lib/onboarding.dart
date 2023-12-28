// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:library_app/intropage/intro1.dart';
import 'package:library_app/intropage/intro2.dart';
import 'package:library_app/intropage/intro3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});
  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final pageController = PageController();

  int currentPage = 0;
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (currentPage) {
              setState(() {
                onLastPage = (currentPage == 2);
              });
            },
            physics: const BouncingScrollPhysics(),
            controller: pageController,
            children: const [
              Intro1(),
              Intro2(),
              Intro3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 20),
                  child: SmoothPageIndicator(
                    effect: const WormEffect(
                        activeDotColor: Colors.blue,
                        spacing: 9,
                        dotHeight: 12,
                        dotWidth: 12,
                        dotColor: Colors.white),
                    controller: pageController,
                    count: 3,
                  ),
                ),
                onLastPage
                    // if true
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(100, 40)),
                          onPressed: () {
                            Get.offAllNamed('/login');
                          },
                          child: const Text(
                            'Done',
                            style: TextStyle(
                                fontFamily: 'Corsa',
                                fontWeight: FontWeight.normal,
                                fontSize: 11,
                                color: Color.fromARGB(255, 91, 91, 91)),
                          ),
                        ),
                      )
                    //if wrong
                    : Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(100, 40)),
                          onPressed: () {
                            pageController.nextPage(
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.ease);
                          },
                          child: const Text(
                            'Next',
                            style: TextStyle(
                                fontFamily: 'Corsa',
                                fontWeight: FontWeight.normal,
                                fontSize: 13,
                                color: Color.fromARGB(255, 91, 91, 91)),
                          ),
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
