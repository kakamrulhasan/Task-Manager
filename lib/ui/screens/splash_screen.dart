import 'package:flutter/material.dart';
import 'package:flutter_application_11/ui/screens/sign_in_screen.dart';
import 'package:flutter_application_11/ui/utilities/asset_paths.dart';
import 'package:flutter_svg/flutter_svg.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

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
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => signInScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            AssetPaths.backgroundSvg,
            width: double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.cover,
          ),
          Center(
            child: SvgPicture.asset(AssetPaths.logosvg, height: 60, width: 60),
          ),
        ],
      ),
    );
  }
}
