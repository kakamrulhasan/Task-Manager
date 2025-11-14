import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_11/widgets/screen_background.dart';

class signUpScreen extends StatefulWidget {
  const signUpScreen({super.key});

  static const String name = '/sign-up';
  @override
  State<signUpScreen> createState() => _signUpScreenState();
}

class _signUpScreenState extends State<signUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              const SizedBox(height: 60),
              Text(
                'Join With Us',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
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
              const SizedBox(height: 24),
              Center(
                child: Column(
                  children: [
                    TextButton(
                      onPressed: _onTapForgotPasswordButton,
                      child: Text('Forgot Password?'),
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        text: "Already have an account ?  ",
                        children: [
                          TextSpan(
                            style: TextStyle(color: Colors.green),
                            text: 'Sign In',
                            recognizer: TapGestureRecognizer()
                              ..onTap = _onTapSignInButton,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
