import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/size_config.dart';
import '../constant.dart';

class AppTheme {
  static final ThemeData mainTheme = ThemeData(
    // dividerColor: kWhiteColor,
    // for Material 3 Design
    useMaterial3: false,

    // Define primary color
    primaryColor: kPrimaryColor,

    // Define the scaffold background color
    scaffoldBackgroundColor: kBackgroundColor,

    // Define the app bar theme
    appBarTheme: AppBarTheme(
      elevation: 2,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 19 * SizeConfig.safeAreaTextScalingFactor,
        fontWeight: FontWeight.w600,
        color: kBlackColor,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      foregroundColor: kBlackColor,
      backgroundColor: kWhiteColor,
    ),
    // Define the Card Color
    cardColor: kWhiteColor,

    // Define the Color Scheme
    colorScheme: const ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kRedColor,
      background: kBackgroundColor,
    ),

    // Define the Elevated Button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        elevation: MaterialStateProperty.resolveWith(
          (states) => states.contains(MaterialState.disabled) ? 0.0 : 2.0,
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 15.0,
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) => states.contains(MaterialState.disabled)
              ? kLightGreyColor.withOpacity(0.3)
              : kPrimaryColor,
        ),
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) => states.contains(MaterialState.disabled)
              ? kGreyTextColor
              : kWhiteColor,
        ),
        overlayColor: MaterialStateProperty.resolveWith(
          (states) => states.contains(MaterialState.disabled)
              ? Colors.transparent
              : states.contains(MaterialState.pressed)
                  ? kWhiteColor.withAlpha(48)
                  : Colors.transparent,
        ),
        textStyle: MaterialStateProperty.all(
          GoogleFonts.poppins(
            fontSize: 16 * SizeConfig.safeAreaTextScalingFactor,
          ),
        ),
      ),
    ),

    // Define the Text Button theme
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) => states.contains(MaterialState.disabled)
              ? kLightGreyColor.withOpacity(0.4)
              : Colors.transparent,
        ),
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) => states.contains(MaterialState.disabled)
              ? kLightGreyColor
              : kPrimaryColor,
        ),
        textStyle: MaterialStateProperty.all(
          GoogleFonts.poppins(
            fontSize: 18 * SizeConfig.safeAreaTextScalingFactor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),

// Define the Filled Text Button theme
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9.0),
          ),
        ),
        elevation: MaterialStateProperty.all(0.0),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 12.0,
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) => states.contains(MaterialState.disabled)
              ? kGreyTextColor
              : kPrimaryColor,
        ),
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) => states.contains(MaterialState.disabled)
              ? kLightGreyColor.withOpacity(0.52)
              : kWhiteColor,
        ),
        overlayColor: MaterialStateProperty.resolveWith(
          (states) => states.contains(MaterialState.disabled)
              ? Colors.transparent
              : states.contains(MaterialState.pressed)
                  ? kPrimaryColor.withAlpha(48)
                  : Colors.transparent,
        ),
        textStyle: MaterialStateProperty.all(
          GoogleFonts.poppins(
            fontSize: 18 * SizeConfig.safeAreaTextScalingFactor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),

// Define the Input Text Field theme
    inputDecorationTheme: InputDecorationTheme(
      floatingLabelBehavior: FloatingLabelBehavior.never,

      fillColor: kTextFeildFillColor,
      filled: true,
      // Customize the text field border

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        // width: 0.0 produces a thin "hairline" border
        borderSide: const BorderSide(color: kTextFeildborderColor, width: 0.0),
      ),

      focusedBorder: OutlineInputBorder(
        // width: 0.0 produces a thin "hairline" border
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: kTextFeildborderColor, width: 0.0),
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: kTextFeildborderColor),
        borderRadius: BorderRadius.circular(15),
      ),
      // Customize the text field label style
      labelStyle: TextStyle(
        color: Colors.grey,
        fontSize: 16 * SizeConfig.safeAreaTextScalingFactor,
      ),
      // Customize the text field hint style
      hintStyle: TextStyle(
        color: const Color(0xFF515151),
        fontSize: 16 * SizeConfig.safeAreaTextScalingFactor,
      ),
      // Customize the text field content padding
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    ),
    //Deifne Tab bar theme
    tabBarTheme: TabBarTheme(
      labelPadding: const EdgeInsets.only(bottom: 5),
      indicator: const UnderlineTabIndicator(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        borderSide: BorderSide(width: 3, color: kPrimaryColor),
        insets: EdgeInsets.only(
          left: 0,
          right: 8,
          bottom: 0,
        ),
      ),
      labelColor: kPrimaryColor,
      unselectedLabelColor: kBlackColor,
      labelStyle: TextStyle(
        fontSize: 20 * SizeConfig.safeAreaTextScalingFactor,
        fontWeight: FontWeight.w600,
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 20 * SizeConfig.safeAreaTextScalingFactor,
        fontWeight: FontWeight.w600,
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
    ),

    // Define the text theme
    textTheme: GoogleFonts.poppinsTextTheme().apply(bodyColor: kBlackColor),
  );
}
