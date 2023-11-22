import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../auth/buyer-enquiry/buyer_inquiry_screen.dart';
import '../provider/dashboard_provider.dart';
import '../splash_screen.dart';
import '../view/auction/auction_details_screen.dart';
import '../view/auction/auction_screen.dart';
import '../view/career/career_screen.dart';
import '../view/contact-us/contact_us_screen.dart';
import '../view/home/home_screen.dart';
import '../view/initial%20view/init_event_screen.dart';
import '../view/profile/edit_profile_screen.dart';
import '../view/profile/profile_screen.dart';
import '../view/watch-List/watch_list_screen.dart';
import '../view/wins/wins_screen.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => DashboardProvider.init(),
        ),
      ],
      builder: (context, child) => MaterialApp(
        scaffoldMessengerKey: scaffoldMsgKey,
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
          Routes.auctionDetailsScreen: (context) =>
              const AuctionDetailsScreen(),
          Routes.watchListScreen: (context) => const WatchListScreen(),
          Routes.winsScreen: (context) => const WinsScreen(),
          Routes.profleScreen: (context) => const ProfileScreen(),
          Routes.editProfleScreen: (context) => const EditProfileScreen(),
          Routes.contactUsScreen: (context) => const ContactUsScreen(),
          Routes.careerScreen: (context) => const CareerScreen(),
        },
      ),
    );
  }
}
