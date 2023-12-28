import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 20),
          child: IconButton(
              onPressed: () {
                Get.toNamed('/login');
              },
              icon: const Icon(Icons.arrow_back)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Forgot Your Password',
              style: TextStyle(
                  fontFamily: 'Corsa',
                  fontSize: 29,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Dont worry enter your registered email to recieve password reset link',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    fontFamily: 'Corsa'),
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child:
                  Image.asset('assets/security.png', width: 225, height: 225),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Icon(Icons.email),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    hintText: 'Email',
                    hintStyle: const TextStyle(
                        fontFamily: 'Corsa',
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Align(
                      child: Text(
                    'Remember Password ? ',
                    style: TextStyle(
                        fontFamily: 'Corsa',
                        fontWeight: FontWeight.normal,
                        fontSize: 12),
                  )),
                  TextButton(
                      onPressed: () {
                        Get.offAllNamed('/login');
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            fontFamily: 'Corsa',
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      )),
                ],
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shadowColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    minimumSize: const Size(300, 50),
                    backgroundColor: const Color.fromARGB(255, 65, 35, 233)),
                onPressed: () {
                  Get.offAllNamed('/emailresetsend');
                },
                child: const Text(
                  'Send',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Corsa',
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
