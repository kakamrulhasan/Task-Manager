import 'package:flutter/material.dart';
import 'package:flutter_application_11/widgets/screen_background.dart';
import 'package:flutter_application_11/ui/screens/sign_in_screen.dart';
import 'package:flutter_application_11/ui/utilities/asset_paths.dart';
import 'package:flutter_svg/flutter_svg.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});
  static const String name = '/';
  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }

  Future<void> _moveToNextScreen() async {
    await Future.delayed(Duration(seconds: 7));
    Navigator.pushReplacementNamed(context, signInScreen.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Center(
          child: SvgPicture.asset(AssetPaths.logosvg, height: 60, width: 60),
        ),
      ),
    );
  }
}
