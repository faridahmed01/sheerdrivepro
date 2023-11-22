import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheerdrivepro/common/assets.dart';
import 'package:sheerdrivepro/common/size_config.dart';
import 'package:sheerdrivepro/constant.dart';
import 'package:http/http.dart' as http;

import '../../api-service/api_service.dart';
import '../../common/routes.dart';
import '../../common/status_bar_color.dart';
import '../../common/utilities.dart';

class LoginCredentialScreen extends StatefulWidget {
  const LoginCredentialScreen({super.key});

  @override
  State<LoginCredentialScreen> createState() => _LoginCredentialScreenState();
}

class _LoginCredentialScreenState extends State<LoginCredentialScreen> {
  bool isLoading = false;

  final TextEditingController usernameController =
      TextEditingController(text: "");
  final TextEditingController passwordController =
      TextEditingController(text: "");
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? validateUserId(String? value) {
    if (value!.isEmpty) {
      return 'Enter Username ';
    } else {
      return null;
    }
  }

  String? validatePassword(String? value) {
    if (value!.isEmpty) {
      return 'Enter Password ';
    } else {
      return null;
    }
  }

  loginWithCrediantialSubmit() async {
    setState(() {
      isLoading = true;
    });
    final Uri url = Uri.parse(APIService.loginWithCrediantial.url);

    Map<String, dynamic> request = {
      "userId": usernameController.text,
      "password": passwordController.text,
    };

    var apiResponse = await http.post(
      url,
      body: json.encode(request),
      headers: await APIService.nonAuthHeaders,
    );

    if (apiResponse.statusCode == 200) {
      var responseBody = json.decode(apiResponse.body);
      String authToken = responseBody['response'];
      await Utilities.saveAuthToken(authToken);
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
        title: "Worng Credential",
        message: errResBody['error'] ?? 'Something went wrong',
      );
    }
  }

  navigateToHomeScreen() {
    Navigator.of(context).pushReplacementNamed(
      Routes.homeScreen,
    );
  }

  bool passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    var themedata = Theme.of(context);
    return StatusBarColorChanger(
      isColorChange: true,
      isDark: false,
      child: Scaffold(
        backgroundColor: kWhiteColor,
        body: SingleChildScrollView(
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
                  "Log in to your Account",
                  style: themedata.textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  color: kWhiteColor,
                  child: InkWell(
                    splashColor: themedata.primaryColor.withOpacity(0.60),
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        Routes.loginScreen,
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: themedata.primaryColor,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Text(
                          "Login With OTP",
                          style: themedata.textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: themedata.primaryColor,
                            fontSize: 18 * SizeConfig.safeAreaTextScalingFactor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
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
                        "Username",
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
                        validator: validateUserId,
                        controller: usernameController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                          hintText: "Enter Username",
                        ),
                        onFieldSubmitted: (String? value) {
                          setState(() {
                            usernameController.text = value!;
                          });
                        },
                        onSaved: (String? value) {
                          setState(() {
                            usernameController.text = value!;
                          });
                        },
                        onChanged: (String? value) {
                          setState(() {
                            usernameController.text = value!;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Password",
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
                        validator: validatePassword,
                        obscureText: passwordVisible ? false : true,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(
                              passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(
                                () {
                                  passwordVisible = !passwordVisible;
                                },
                              );
                            },
                          ),
                          hintText: "Enter Password",
                        ),
                        onFieldSubmitted: (String? value) {
                          setState(() {
                            passwordController.text = value!;
                          });
                        },
                        onSaved: (String? value) {
                          setState(() {
                            passwordController.text = value!;
                          });
                        },
                        onChanged: (String? value) {
                          setState(() {
                            passwordController.text = value!;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(
                                Routes.buyerInquiryScreen,
                              );
                            },
                            child: Text(
                              "Inquiry",
                              style: themedata.textTheme.titleMedium!.copyWith(
                                color: kBlueColor,
                                fontSize:
                                    18 * SizeConfig.safeAreaTextScalingFactor,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              showForgetPasswordDialog(
                                context,
                                themedata,
                              );
                            },
                            child: Text(
                              "Forgot Passord?",
                              style: themedata.textTheme.titleMedium!.copyWith(
                                color: kBlueColor,
                                fontSize:
                                    18 * SizeConfig.safeAreaTextScalingFactor,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth - 39,
                        child: ElevatedButton(
                          onPressed: isLoading
                              ? null
                              : () {
                                  if (_formKey.currentState!.validate()) {
                                    loginWithCrediantialSubmit();
                                  }
                                },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Sign In"),
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
            ],
          ),
        ),
      ),
    );
  }

  void showForgetPasswordDialog(BuildContext context, ThemeData themeData) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: EdgeInsets.zero,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shadowColor: Colors.black12,
          backgroundColor: Colors.black12.withOpacity(0.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 10,
                        ),
                        width: SizeConfig.screenWidth,
                        decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: SvgPicture.asset(
                                Assets.forgetPasswordIcon,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Enter your email address below and we'll send you the instructions that how to generate your new password",
                              style: themeData.textTheme.bodyLarge!.copyWith(
                                color: kGreyTextColor,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Email",
                                style:
                                    themeData.textTheme.titleMedium!.copyWith(
                                  color: kGreyTextColor,
                                ),
                              ),
                            ),
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: const InputDecoration(
                                hintText: "Enter Email",
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: SizeConfig.screenWidth,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text("Submit"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 17,
                right: 20,
                child: InkWell(
                  splashColor: themeData.primaryColor,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: kBlackColor.withOpacity(0.20),
                          blurRadius: 5.0, // soften the shadow
                          spreadRadius: 0.90, //extend the shadow
                          offset: const Offset(
                            0.10, // Move to right 5  horizontally
                            0.20, // Move to bottom 5 Vertically
                          ),
                        )
                      ],
                      color: kWhiteColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.close,
                        color: kPrimaryColor,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
