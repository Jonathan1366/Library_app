import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usenameController = TextEditingController();
  final passwordController = TextEditingController();
  bool showpassword = true;

  void showPassword() {
    setState(() {
      showpassword != showpassword;
    });
  }

  void loginUser ()
  {
    
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(top: 25, left: 15),
            child: IconButton(
                onPressed: () {
                  Get.toNamed('onboarding');
                },
                icon: const Icon(Icons.arrow_back)),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Welcome back Liberss',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Corsa',
                      fontSize: 34)),
              const SizedBox(height: 100),
              TextFormField(
                decoration: InputDecoration(
                    suffixIcon: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14,
                      ),
                      child: Icon(Icons.person),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    hintText: 'Input username',
                    hintStyle: const TextStyle(
                        fontWeight: FontWeight.normal, color: Colors.black)),
              ),
              const SizedBox(height: 40),
              TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: Icon(
                        showpassword ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    hintText: 'Input password',
                    hintStyle: const TextStyle(
                        fontWeight: FontWeight.normal, color: Colors.black)),
              ),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  Get.toNamed('/forgetpass');
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forget password ?',
                        style: TextStyle(
                            fontFamily: 'Corsa', fontWeight: FontWeight.normal),
                        textAlign: TextAlign.end),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(350, 50),
                    backgroundColor: const Color.fromARGB(255, 0, 1, 84)),
                onPressed: () {
                  Get.toNamed('/homepage');
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Corsa',
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              TextButton(
                  onPressed: () {
                    Get.toNamed('/signup');
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not have an account ? Signup',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 1, 84),
                            fontFamily: 'Corsa',
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
