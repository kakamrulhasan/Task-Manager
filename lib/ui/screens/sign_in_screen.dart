import 'package:flutter/material.dart';
import 'package:flutter_application_11/widgets/screen_background.dart';

class signInScreen extends StatefulWidget {
  const signInScreen({super.key});

  @override
  State<signInScreen> createState() => _signInScreenState();
}

class _signInScreenState extends State<signInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(children: [Text('Get stated with'),TextFormField(),TextFormField()]),
        ),
      ),
    );
  }
}
