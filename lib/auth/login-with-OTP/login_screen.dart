import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sheerdrivepro/common/routes.dart';

import '../../api-service/api_service.dart';
import 'package:http/http.dart' as http;
import '../../common/assets.dart';
import '../../common/size_config.dart';
import '../../common/utilities.dart';
import '../../constant.dart';
import '../../models/login_user_detail_dto.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoading = false;
  final TextEditingController mobileNoController =
      TextEditingController(text: "");
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  navigateToOtpScreen(String phoneNumber) {
    Navigator.of(context).pushNamed(
      Routes.otpScreen,
      arguments: phoneNumber,
    );
  }

  String? validateNumber(String? value) {
    if (value!.isEmpty) {
      return 'Enter Mobile Number';
    } else {
      if (value.length > 10 || value.length < 10) {
        return 'Enter Valid Mobile Number!';
      } else {
        return null;
      }
    }
  }

  validatePhoneNumber() async {
    final String phoneNumber = mobileNoController.text;
    final Uri url =
        Uri.parse('${APIService.verifyLoginPhoneNumber.url}/$phoneNumber');

    var apiResponse = await http.post(
      url,
      headers: await APIService.nonAuthHeaders,
    );

    if (apiResponse.statusCode == 200) {
      var successBody = json.decode(apiResponse.body);
      LoginUserDetailDto userDetail = LoginUserDetailDto(
        phoneNumber: phoneNumber,
        verificationId: successBody['response']['id'],
      );
      Utilities.showSnackBarWithoutKey(
        isError: false,
        title: "Code Sent!",
        message: "We have sent an OTP Code to your mobile number.",
      );

      await Utilities.saveLoginUserDetails(userDetail);
      setState(() {
        isLoading = false;
      });
      navigateToOtpScreen(phoneNumber);
    } else if (apiResponse.statusCode == 412) {
      var responseBody = json.decode(apiResponse.body);
      setState(() {
        isLoading = false;
      });

      Utilities.showSnackBarWithoutKey(
        isError: true,
        title: "Authentication Error",
        message: responseBody['error'],
      );
    } else if (apiResponse.statusCode == 400) {
      var responseBody = json.decode(apiResponse.body);
      setState(() {
        isLoading = false;
      });

      Utilities.showSnackBarWithoutKey(
        isError: true,
        title: "Authentication Error",
        message: responseBody['error'],
      );
    } else {
      var responseBody = json.decode(apiResponse.body);
      setState(() {
        isLoading = false;
      });

      Utilities.showSnackBarWithoutKey(
        isError: true,
        title: "Authentication Error",
        message: responseBody['error'] ?? 'Oops Some Error Occurred!',
      );
    }
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
                  child: Form(
                    key: _formKey,
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
                          validator: validateNumber,
                          keyboardType: TextInputType.number,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: const InputDecoration(
                            hintText: "Enter Your Mobile Number",
                          ),
                          onFieldSubmitted: (String? value) {
                            setState(() {
                              mobileNoController.text = value!;
                            });
                          },
                          onSaved: (String? value) {
                            setState(() {
                              mobileNoController.text = value!;
                            });
                          },
                          onChanged: (String? value) {
                            setState(() {
                              mobileNoController.text = value!;
                            });
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: SizeConfig.screenWidth - 39,
                          child: ElevatedButton(
                            onPressed: isLoading
                                ? null
                                : () {
                                    if (_formKey.currentState!.validate()) {
                                      validatePhoneNumber();
                                    }
                                  },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Send OTP"),
                                if (isLoading)
                                  const SizedBox(
                                    width: 10,
                                  ),
                                if (isLoading)
                                  const CupertinoActivityIndicator()
                              ],
                            ),
                          ),
                        ),
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
