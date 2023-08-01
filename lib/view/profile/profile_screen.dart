import 'package:flutter/material.dart';
import 'package:sheerdrivepro/common/routes.dart';
import 'package:sheerdrivepro/globals.dart';

import '../../common/assets.dart';
import '../../common/size_config.dart';
import '../../constant.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var themedata = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              size: 22,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: SizeConfig.screenHeight / 1.1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    height: SizeConfig.screenHeight / 3.8,
                    width: SizeConfig.screenHeight,
                    color: kTextFeildborderColor,
                    child: Center(
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          const CircleAvatar(
                            radius: 60,
                            backgroundImage: NetworkImage(
                              'https://picsum.photos/250?image=12',
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 2, right: 0),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kWhiteColor,
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
                            ),
                            child: const Center(
                                child: Icon(
                              Icons.camera_alt,
                              size: 22,
                            )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 10,
                      right: 10,
                    ),
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Akshay Patel",
                            style: themedata.textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  17 * SizeConfig.safeAreaTextScalingFactor,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "User ID : SB100147M",
                            style: themedata.textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  17 * SizeConfig.safeAreaTextScalingFactor,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.call,
                                size: 20,
                              ),
                              Text(
                                "+91 8108605544",
                                style: themedata.textTheme.bodyLarge!.copyWith(
                                  fontSize:
                                      14 * SizeConfig.safeAreaTextScalingFactor,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Join Date : ",
                                style: themedata.textTheme.bodyLarge!.copyWith(
                                  fontSize:
                                      14 * SizeConfig.safeAreaTextScalingFactor,
                                ),
                              ),
                              Text(
                                "15 April 2023, 03:15 PM",
                                style: themedata.textTheme.bodyLarge!.copyWith(
                                  fontSize:
                                      14 * SizeConfig.safeAreaTextScalingFactor,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Location : ",
                                style: themedata.textTheme.bodyLarge!.copyWith(
                                  fontSize:
                                      14 * SizeConfig.safeAreaTextScalingFactor,
                                ),
                              ),
                              Text(
                                "Ahmedabad, Gujarat",
                                style: themedata.textTheme.bodyLarge!.copyWith(
                                  fontSize:
                                      14 * SizeConfig.safeAreaTextScalingFactor,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Category : ",
                                style: themedata.textTheme.bodyLarge!.copyWith(
                                  fontSize:
                                      14 * SizeConfig.safeAreaTextScalingFactor,
                                ),
                              ),
                              Text(
                                "4W",
                                style: themedata.textTheme.bodyLarge!.copyWith(
                                  fontSize:
                                      14 * SizeConfig.safeAreaTextScalingFactor,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: SizeConfig.screenWidth,
                              child: ElevatedButton(
                                onPressed: () {
                                  navigatorKey.currentState!.pushNamed(
                                    Routes.editProfleScreen,
                                  );
                                },
                                child: const Text("Edit Profile"),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                showUpdatePasswordDialog(context, themedata);
                              },
                              child: Container(
                                height: SizeConfig.screenHeight / 17,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: themedata.primaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "Update Password",
                                    style: themedata.textTheme.titleMedium!
                                        .copyWith(
                                      color: themedata.primaryColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                child: Image(
                  image: AssetImage(
                    Assets.bottomImage,
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showUpdatePasswordDialog(BuildContext context, ThemeData themeData) {
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
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Icon(
                                Icons.lock,
                                color: themeData.primaryColor,
                                size: 32,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Text(
                                "Change Password",
                                style: themeData.textTheme.titleLarge!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Old Password",
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
                                hintText: "Enter Old Password",
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "New Password",
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
                                hintText: "Enter New Password",
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Confirm Password",
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
                                hintText: "Enter Confirm Password",
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
