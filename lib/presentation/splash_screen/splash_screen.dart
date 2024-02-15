import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/presentation/loginscreen_screen/loginscreen_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator
          .pushReplacement(
          context, MaterialPageRoute(
        builder: (context) =>
            LoginscreenScreen(),));
    });
  }

  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: mediaQuery.size.height,
          width: mediaQuery.size.width,
          child: Center(
            child: CustomImageView(
              imagePath: ImageConstant.imgBradgoodLogo,
              height: 54.v,
              width: 217.h,
            ),
          ),
        ),
      ),
    );
  }
}
