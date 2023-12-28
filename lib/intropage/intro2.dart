import 'package:flutter/material.dart';

class Intro2 extends StatefulWidget {
  const Intro2({super.key});

  @override
  State<Intro2> createState() => _Intro2State();
}

class _Intro2State extends State<Intro2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 3, 195),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/intro2new.png", width: 450, height: 450),
              const SizedBox(height: 20),
              const Text(
                'Find your favorite books',
                style: TextStyle(
                    fontFamily: 'Corsa',
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 14,
              ),
              const Text(
                'Browse from thousands of \nbooks in various genres',
                style: TextStyle(
                    fontFamily: 'Corsa',
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
