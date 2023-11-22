import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:http/http.dart' as http;

import '../../api-service/api_service.dart';
import '../../common/assets.dart';
import '../../common/routes.dart';
import '../../common/size_config.dart';
import '../../common/utilities.dart';
import '../../constant.dart';
import '../../models/login_user_detail_dto.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  bool otpError = false;
  bool isLoading = false;
  bool resendBtnLoader = true;
  Timer? timer;
  int _start = 60;
  final TextEditingController otpNumberController =
      TextEditingController(text: "");

  validateOTP() async {
    if (otpNumberController.text.isEmpty) {
      setState(() {
        otpError = true;
      });
      return;
    } else if (otpNumberController.text.length < 6) {
      setState(() {
        otpError = true;
      });
      return;
    } else {
      LoginUserDetailDto? userDetail = await Utilities.getLoginUserDetails();
      if (userDetail != null) {
        setState(() {
          otpError = false;
          isLoading = true;
        });
        final Uri url = Uri.parse(APIService.signInByMobileNumber.url);
        Map<String, dynamic> request = {
          "phoneNo": userDetail.phoneNumber,
          "verifyToken": userDetail.verificationId,
          "otp": otpNumberController.text,
        };
        var apiResponse = await http.post(
          url,
          body: json.encode(request),
          headers: await APIService.nonAuthHeaders,
        );

        if (apiResponse.statusCode == 200) {
          var responseBody = json.decode(apiResponse.body);

          String authToken =
              responseBody['response']['buyerDetails']['accessToken'];

          await Utilities.saveAuthToken(authToken);
          await Utilities.saveUserIdAndDetails(
            responseBody['response']['buyerDetails']['uuid'],
            userDetail.phoneNumber,
            responseBody['response']['buyerDetails']['name'],
          );

          setState(() {
            isLoading = false;
          });
          navigateToHomeScreen();
        } else {
          setState(() {
            isLoading = false;
          });
          var errResBody = json.decode(apiResponse.body);
          Utilities.showSnackBarWithoutKey(
            isError: true,
            title: "OTP Validation Failed",
            message: errResBody['error'] ?? 'Something went wrong',
          );
        }
      }
    }
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          if (mounted) {
            setState(() {
              timer.cancel();
              // resendBtnLoader = false;
            });
          }
        } else {
          if (mounted) {
            setState(() {
              _start--;
            });
          }
        }
      },
    );
  }

  navigateToHomeScreen() {
    Navigator.of(context).pushReplacementNamed(
      Routes.homeScreen,
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

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
                    controller: otpNumberController,
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
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    onChanged: (String val) {
                      if (val.length == 6) {
                        setState(() {
                          otpNumberController.text = val;
                          otpError = false;
                        });
                      }
                    },
                    onSaved: (String? val) {
                      if (val != null) {
                        setState(() {
                          otpNumberController.text = val;
                          otpError = false;
                        });
                      }
                    },
                    onSubmitted: (String? val) {
                      if (val != null) {
                        setState(() {
                          otpNumberController.text = val;
                          otpError = false;
                        });
                      }
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Didn\'t get OTP?',
                      style: TextStyle(
                        color: kBlackColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        // fontFamily: AppTheme.fontMontserratRegular,
                      ),
                      maxLines: 2,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    TextButton(
                      // onPressed: !resendBtnLoader ? () => resendOTP() : null,
                      onPressed: () {},
                      child: Text(
                        'Resend OTP ${_start > 0 ? "in $_start" : ""}',
                        style: TextStyle(
                          fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                          decoration: TextDecoration.underline,
                          decorationThickness: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
                if (otpError)
                  Text(
                    otpNumberController.text.isEmpty
                        ? 'OTP is Required'
                        : otpNumberController.text.length < 6
                            ? 'OTP must be of 6 digits'
                            : '',
                    style: TextStyle(
                      color: kRedColor,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                      fontSize: 15 * SizeConfig.safeAreaTextScalingFactor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: SizeConfig.screenWidth - 39,
                  child: ElevatedButton(
                    onPressed: isLoading ? null : () async => validateOTP(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Submit"),
                        if (isLoading)
                          const SizedBox(
                            width: 10,
                          ),
                        if (isLoading) const CupertinoActivityIndicator()
                      ],
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
