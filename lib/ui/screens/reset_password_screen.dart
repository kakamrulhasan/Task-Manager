import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_11/ui/screens/sign_in_screen.dart';
import 'package:flutter_application_11/widgets/screen_background.dart';

class resetPasswordScreen extends StatefulWidget {
  const resetPasswordScreen({super.key});

  static const String name = '/reset-password';
  @override
  State<resetPasswordScreen> createState() => _resetPasswordScreenState();
}

class _resetPasswordScreenState extends State<resetPasswordScreen> {
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
                'Reset Password',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                'Minimun length of password should more than 8 letters',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(hintText: 'New Password'),
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'Confirm Password'),
              ),
              const SizedBox(height: 8),
              FilledButton(
                onPressed: _onTapConfirmButton,
                child: Text('Confirm'),
              ),
              const SizedBox(height: 24),
              Center(
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        text: "Have an account ?  ",
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

  void _onTapSignInButton() {
    Navigator.pushNamedAndRemoveUntil(
      context,
      signInScreen.name,
      (predicate) => false,
    );
  }

  void _onTapConfirmButton() {
  }
}
