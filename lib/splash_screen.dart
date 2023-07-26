import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sheerdrivepro/common/assets.dart';
import 'package:sheerdrivepro/common/routes.dart';
import 'package:sheerdrivepro/common/size_config.dart';

import 'globals.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () {
        navigatorKey.currentState!.pushNamedAndRemoveUntil(
          Routes.initEventScreen,
          (route) => false,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // var themedata = Theme.of(context);
    return Scaffold(
      body: Center(
        child: Image.asset(
          Assets.sheerdriveProLogoImage,
          height: SizeConfig.screenHeight / 6,
        ),
      ),
    );
  }
}
