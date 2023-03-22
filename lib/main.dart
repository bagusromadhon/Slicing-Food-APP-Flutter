import 'package:flutter/material.dart';
import 'package:food/splash_screen/screen.dart';

void main() {
  runApp(const MyApp());
}
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroScreen(),
    );
  }
}
