import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sheerdrivepro/common/routes.dart';

import '../../common/assets.dart';
import '../../common/size_config.dart';
import '../../constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  navigateToOtpScreen(String phoneNumber) {
    Navigator.of(context).pushNamed(
      Routes.otpScreen,
      arguments: phoneNumber,
    );
  }

  @override
  Widget build(BuildContext context) {
    var themedata = Theme.of(context);
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light.copyWith(
          statusBarColor: themedata.primaryColor,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  child: Image(
                    image: AssetImage(
                      Assets.vehiclesBgImage,
                    ),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: SizedBox(
                    child: Image(
                      image: AssetImage(
                        Assets.sheerdriveProLogoImage,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Login With OTP",
                    style: themedata.textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mobile Number",
                        style: themedata.textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: kGreyTextColor,
                          fontSize: 18 * SizeConfig.safeAreaTextScalingFactor,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                          hintText: "Enter Your Mobile Number",
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth - 39,
                        child: ElevatedButton(
                          onPressed: () {
                            navigateToOtpScreen("8778797654");
                          },
                          child: const Text("Send OTP"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
