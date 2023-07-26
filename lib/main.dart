import 'package:flutter/material.dart';
import 'package:sheerdrivepro/auth/buyer-enquiry/buyer_inquiry_screen.dart';
import 'package:sheerdrivepro/splash_screen.dart';
import 'package:sheerdrivepro/view/auction/auction_details_screen.dart';
import 'package:sheerdrivepro/view/auction/auction_screen.dart';
import 'package:sheerdrivepro/view/career/career_screen.dart';
import 'package:sheerdrivepro/view/contact-us/contact_us_screen.dart';
import 'package:sheerdrivepro/view/home/home_screen.dart';
import 'package:sheerdrivepro/view/initial%20view/init_event_screen.dart';
import 'package:sheerdrivepro/view/profile/profile_screen.dart';
import 'package:sheerdrivepro/view/watch-List/watch_list_screen.dart';
import 'package:sheerdrivepro/view/wins/wins_screen.dart';
import '../auth/login-with-OTP/login_screen.dart';
import '../auth/login-with-OTP/otp_screen.dart';
import '../auth/login-with-credential/login_credential_screen.dart';
import '../common/routes.dart';
import '../globals.dart';

import '../theme/app_theme.dart';

import 'common/size_config.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MaterialApp(
      navigatorKey: navigatorKey,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      title: 'SheerDrive Pro',
      theme: AppTheme.mainTheme,
      home: const SplashScreen(),
      routes: {
        Routes.buyerInquiryScreen: (context) => const BuyerInquiryScreen(),
        Routes.initEventScreen: (context) => const InitEventScreen(),
        Routes.loginScreen: (context) => const LoginScreen(),
        Routes.otpScreen: (context) => const OTPScreen(),
        Routes.loginCredentialScreen: (context) =>
            const LoginCredentialScreen(),
        Routes.homeScreen: (context) => const HomeScreen(),
        Routes.auctionScreen: (context) => const AuctionScreen(),
        Routes.auctionDetailsScreen: (context) => const AuctionDetailsScreen(),
        Routes.watchListScreen: (context) => const WatchListScreen(),
        Routes.winsScreen: (context) => const WinsScreen(),
        Routes.profleScreen: (context) => const ProfleScreen(),
        Routes.contactUsScreen: (context) => const ContactUsScreen(),
        Routes.careerScreen: (context) => const CareerScreen(),
      },
    );
  }
}
