import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:emergency_access/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 2000,
        splash: Image.asset('assets/images/logo_with_name.png'),
        splashIconSize: 200.h,
        nextScreen: const ProfileScreen(),
        animationDuration: const Duration(milliseconds: 2000),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.bottomToTop,
        backgroundColor: Colors.white);
  }
}

