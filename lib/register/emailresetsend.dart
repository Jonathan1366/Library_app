import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailResetsend extends StatefulWidget {
  const EmailResetsend({super.key});

  @override
  State<EmailResetsend> createState() => _EmailResetsendState();
}

class _EmailResetsendState extends State<EmailResetsend> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: IconButton(
                  onPressed: () {
                    Get.offAllNamed('/login');
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    'Email has been sent!',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Corsa',
                        fontSize: 30),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Center(
                  child: Text(
                    'Please check your inbox and click\nin the link to reset the password',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Corsa',
                        fontSize: 15,
                        color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Center(
                    child: Image.asset(
                      'assets/email.png',
                      width: 200,
                      height: 200,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 65, 35, 233),
                      minimumSize: const Size(300, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      Get.offAllNamed('/login');
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontFamily: 'Corsa',
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Didn\'t recieve the link?'),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Resend',
                            style: TextStyle(
                              fontFamily: 'Corsa',
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color.fromARGB(255, 65, 35, 233),
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
