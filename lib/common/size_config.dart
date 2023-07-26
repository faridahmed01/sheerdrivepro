import 'dart:math';

import 'package:flutter/material.dart';

class SizeConfig {
  static double screenWidth = 0.0;
  static double screenHeight = 0.0;
  static double blockSizeHorizontal = 0.0;
  static double blockSizeVertical = 0.0;
  static double _safeAreaHorizontal = 0.0;
  static double _safeAreaVertical = 0.0;
  static double safeBlockHorizontal = 0.0;
  static double safeBlockVertical = 0.0;
  static double _safeFactorHorizontal = 0.0;
  static double _safeFactorVertical = 0.0;
  static double safeAreaTextScalingFactor = 0.0;
  static double safeAreaPaddingTop = 0.0;
  static double safeAreaPaddingBottom = 0.0;

  // static bool? isStandardScreen;

  // screen dimensions
  static bool isMobile = true;
  static bool isTablet = false;
  static bool isDesktop = false;

  SizeConfig.init(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    const divisor = 400;
    screenWidth = mediaQueryData.size.width;
    screenHeight = mediaQueryData.size.height;

    isMobile = screenWidth <= 768;
    isTablet = screenWidth > 768 && screenWidth <= 992;
    isDesktop = screenWidth >= 992;

    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
    _safeAreaHorizontal =
        mediaQueryData.padding.left + mediaQueryData.padding.right;
    _safeAreaVertical =
        mediaQueryData.padding.top + mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
    safeAreaPaddingTop = mediaQueryData.padding.top;
    safeAreaPaddingBottom = mediaQueryData.padding.bottom;

    // isStandardScreen = screenHeight! > 650 ? true : false;
    _safeFactorHorizontal = (screenWidth - _safeAreaHorizontal) / divisor;
    _safeFactorVertical = (screenHeight - _safeAreaVertical) / divisor;

    safeAreaTextScalingFactor = min(_safeFactorVertical, _safeFactorHorizontal);
  }
}
