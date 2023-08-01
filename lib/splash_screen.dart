import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:sheerdrivepro/common/assets.dart';
import 'package:sheerdrivepro/common/routes.dart';
import 'package:sheerdrivepro/common/size_config.dart';
import 'package:sheerdrivepro/common/utilities.dart';

import 'globals.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  navigatepage() async {
    var token = await Utilities.getAuthToken();
    bool hasExpired = token == null ? true : JwtDecoder.isExpired(token);
    if (hasExpired) {
      navigatorKey.currentState!.pushNamedAndRemoveUntil(
        Routes.initEventScreen,
        (route) => false,
      );
    } else {
      navigatorKey.currentState!.pushNamedAndRemoveUntil(
        Routes.homeScreen,
        (route) => false,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      navigatepage,
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
