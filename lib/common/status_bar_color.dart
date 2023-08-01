import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sheerdrivepro/constant.dart';

class StatusBarColorChanger extends StatelessWidget {
  final Widget child;
  final bool isColorChange;
  final bool isDark;

  const StatusBarColorChanger({
    Key? key,
    required this.child,
    this.isDark = false,
    this.isColorChange = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        // For Android.
        // Use [light] for white status bar and [dark] for black status bar.

        statusBarIconBrightness: isDark
            ? Platform.isAndroid
                ? Brightness.light
                : Brightness.dark
            : Brightness.dark,
        //  Platform.isAndroid? isDark ?  Brightness.light : Brightness.dark: ,

        statusBarColor: isColorChange ? kPrimaryColor : kWhiteColor,

        // For iOS.
        // Use [dark] for white status bar and [light] for black status bar.
        statusBarBrightness: isDark
            ? Platform.isAndroid
                ? Brightness.dark
                : Brightness.light
            : Brightness.light,
      ),
      child: Platform.isAndroid
          ? SafeArea(
              child: child,
            )
          : child,
    );
  }
}
