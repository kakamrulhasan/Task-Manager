
import 'package:flutter/material.dart';
import 'package:flutter_application_11/widgets/screen_background.dart';
import 'package:flutter_application_11/widgets/tm_app_bar.dart';

class upDateProfileScreen extends StatefulWidget {
  const upDateProfileScreen({super.key});

  static const String name = '/update-profile';
  @override
  State<upDateProfileScreen> createState() => _upDateProfileScreenState();
}

class _upDateProfileScreenState extends State<upDateProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(),
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              const SizedBox(height: 60),
              Text(
                'Update Profile',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              TextFormField(decoration: InputDecoration(hintText: 'Email')),
              TextFormField(
                decoration: InputDecoration(hintText: 'First Name'),
              ),
              TextFormField(decoration: InputDecoration(hintText: 'Last Name')),
              TextFormField(decoration: InputDecoration(hintText: 'Mobile')),
              TextFormField(decoration: InputDecoration(hintText: 'Password')),
              const SizedBox(height: 8),
              FilledButton(
                onPressed: _onTapSignUpButton,
                child: Icon(Icons.arrow_circle_right_outlined),
              ),
              
             ],
          ),
        ),
      ),
    );
  }

  void _onTapSignUpButton() {}
  void _onTapForgotPasswordButton() {}
  void _onTapSignInButton() {
    Navigator.pop(context);
  }
}
