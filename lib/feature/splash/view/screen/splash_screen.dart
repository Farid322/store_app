import 'package:flutter/material.dart';
import 'package:store_app/core/helper/navigation_helper.dart';
import 'package:store_app/feature/auth/view/screen/login_screen.dart';
import 'package:store_app/feature/splash/view/widget/splash_screen_body.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    delayingFunction();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenBody(),
    );
  }

  Future<void> delayingFunction() {
    return Future.delayed(
      Duration(seconds: 2),
      () {
        if (mounted) {
          NavigationHelper.pushUntil(
            context: context,
            destination: LoginScreen(),
          );
        }
      },
    );
  }
}
