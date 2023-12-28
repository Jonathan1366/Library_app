import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(body:Center(child: Column(children: [Text('data')],),)),
    );
  }
}