import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../common/assets.dart';
import '../../common/size_config.dart';
import '../../constant.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    var themedata = Theme.of(context);
    var routeArgs = ModalRoute.of(context)!.settings.arguments as String?;

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
              crossAxisAlignment: CrossAxisAlignment.center,
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
                Text(
                  "OTP Verification",
                  style: themedata.textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Enter the OTP you received to",
                  style: themedata.textTheme.displayLarge!.copyWith(
                    fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "+91 $routeArgs",
                  style: themedata.textTheme.displayLarge!.copyWith(
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18 * SizeConfig.safeAreaTextScalingFactor,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 0,
                  ),
                  child: PinCodeTextField(
                    keyboardType: TextInputType.number,
                    backgroundColor: kWhiteColor,
                    appContext: context,
                    length: 6,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(15),
                      fieldWidth: (SizeConfig.screenWidth / 6) - 16,
                      fieldHeight: (SizeConfig.screenWidth / 6) - 6,
                      activeColor: kPrimaryColor.withOpacity(1),
                      // borderWidth: 1.0,/
                      inactiveColor: kTextFeildborderColor,
                      selectedColor: kPrimaryColor,
                      inactiveFillColor: kTextFeildborderColor,
                      selectedFillColor: kWhiteColor,
                      activeFillColor: kTextFeildborderColor,
                      errorBorderColor: kRedColor,
                    ),
                    enablePinAutofill: true,
                    enableActiveFill: true,
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Resend OTP",
                      style: themedata.textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: themedata.primaryColor,
                        fontSize: 16 * SizeConfig.safeAreaTextScalingFactor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: SizeConfig.screenWidth - 39,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Submit",
                    ),
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
