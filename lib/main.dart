import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:library_app/register/loginpage.dart';
import 'package:library_app/register/registerpage.dart';
import 'package:library_app/splash.dart';

void main() {
  runApp(const LibraryApp());
}

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
        GetPage(name: '/splash', page: () => const Splash()),
        GetPage(name: '/register', page: () => const RegisterPage()),
        GetPage(
          name: '/login',
          page: () => const LoginPage(),
        ),
      ],
    );
  }
}
