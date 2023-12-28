import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:library_app/dashboard/homepage.dart';
import 'package:library_app/intropage/intro3.dart';
import 'package:library_app/onboarding.dart';
import 'package:library_app/intropage/intro2.dart';
import 'package:library_app/intropage/Intro1.dart';
import 'package:library_app/register/emailresetsend.dart';
import 'package:library_app/register/forgetpassword.dart';
import 'package:library_app/register/loginpage.dart';
import 'package:library_app/register/registerpage.dart';
import 'package:library_app/splash.dart';

void main() {
  runApp(const LibraryApp());
}

final splashkey = GlobalKey();

class LibraryApp extends StatefulWidget {
  const LibraryApp({super.key});

  @override
  State<LibraryApp> createState() => _LibraryAppState();
}

class _LibraryAppState extends State<LibraryApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page: () => Splash(key: splashkey)),
        GetPage(name: '/onboarding', page: () => const OnBoarding()),
        GetPage(name: '/intro1', page: () => const Intro1()),
        GetPage(name: '/intro2', page: () => const Intro2()),
        GetPage(name: '/intro3', page: () => const Intro3()),
        GetPage(name: '/register', page: () => const Signup()),
        GetPage(name: '/login', page: () => const LoginPage()),
        GetPage(name: '/forgetpass', page: (() => const ForgetPassword())),
        GetPage(name: '/emailresetsend', page: () => const EmailResetsend()),
        GetPage(name: '/homepage', page: () => const Homepage())
      ],
    );
  }
}
