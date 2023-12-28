import 'package:flutter/material.dart';

class Intro3 extends StatefulWidget {
  const Intro3({super.key});

  @override
  State<Intro3> createState() => _Intro3State();
}

class _Intro3State extends State<Intro3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/self-learning.png', width: 400, height: 400),
              const SizedBox(height: 20),
              const Text(
                'Borrow and manage books easily',
                style: TextStyle(
                    fontFamily: 'Corsa',
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 13),
              const Text(
                'Use our innovative app to \nscan and borrow books',
                style: TextStyle(
                    fontFamily: 'Corsa',
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
