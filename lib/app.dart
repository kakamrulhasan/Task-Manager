import 'package:flutter/material.dart';
import 'package:flutter_application_11/ui/screens/forgot_password_email_screen.dart';
import 'package:flutter_application_11/ui/screens/forgot_password_verify_otp_screen.dart';
import 'package:flutter_application_11/ui/screens/sign_in_screen.dart';
import 'package:flutter_application_11/ui/screens/sign_up_screen.dart';
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
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          hintStyle: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            fixedSize: Size.fromWidth(double.maxFinite),
            padding: EdgeInsets.symmetric(vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(8),
            ),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
          ),
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          labelMedium: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey),
        ),
      ),

      routes: <String, WidgetBuilder>{
        splashScreen.name: (_) => splashScreen(),
        signInScreen.name: (_) => signInScreen(),
        signUpScreen.name: (_) => signUpScreen(),
        ForgotPasswordEmailScreen.name:(_)=>ForgotPasswordEmailScreen(),
        ForgotPasswordVerifyOtpScreen.name:(_)=>ForgotPasswordVerifyOtpScreen(),
      },
      initialRoute: splashScreen.name,
    );
  }
}
