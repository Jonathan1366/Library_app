import 'package:flutter/material.dart';

class Intro1 extends StatefulWidget {
  const Intro1({super.key});

  @override
  State<Intro1> createState() => _Intro1State();
}

class _Intro1State extends State<Intro1> {
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
    
      body: Center(
        
        child: Padding(padding:  const EdgeInsets.all(17),
      child: Column(children: [Image.asset('assets/books.gif')],),
        ),
      ),
    );
  }
}
