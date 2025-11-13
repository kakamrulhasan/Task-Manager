import 'package:flutter/material.dart';
import 'package:flutter_application_11/ui/screens/splash_screen.dart';

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splashScreen(),
    );
  }
}