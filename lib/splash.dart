import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatefulWidget {
  const Splash({required Key key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Get.toNamed('/onboarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2));
    return Scaffold(
      body: Center(
          child: Image.asset("assets/books.gif", width: 150, height: 150)),
    );
  }
}
