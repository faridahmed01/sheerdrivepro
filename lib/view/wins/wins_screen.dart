import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheerdrivepro/common/size_config.dart';

import '../../common/assets.dart';
import '../../constant.dart';

class WinsScreen extends StatefulWidget {
  const WinsScreen({super.key});

  @override
  State<WinsScreen> createState() => _WinsScreenState();
}

class _WinsScreenState extends State<WinsScreen> {
  @override
  Widget build(BuildContext context) {
    var themedata = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Wins"),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              size: 22,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              Assets.refreshIcon,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              winsCard(themedata),
              winsCard(themedata),
            ],
          ),
        ),
      ),
    );
  }

  Padding winsCard(ThemeData themedata) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
      child: Container(
        padding: const EdgeInsets.all(10),
        width: SizeConfig.screenWidth,
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
            ),
          ],
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "WB95A0791 | 2020 | Ashok Leyland Ecomet",
              style: themedata.textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Test Auction - Pan India 0317",
              style: themedata.textTheme.bodyLarge!.copyWith(
                color: kGreyTextColor,
                fontSize: 16 * SizeConfig.safeAreaTextScalingFactor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Seller Name",
                        style: themedata.textTheme.bodyLarge!.copyWith(
                          color: kGreyTextColor,
                        ),
                      ),
                      Text(
                        "XYZ Seller",
                        style: themedata.textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Seller Ref",
                        style: themedata.textTheme.bodyLarge!.copyWith(
                          color: kGreyTextColor,
                        ),
                      ),
                      Text(
                        "Text280192",
                        style: themedata.textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ref. Id",
                        style: themedata.textTheme.bodyLarge!.copyWith(
                          color: kGreyTextColor,
                        ),
                      ),
                      Text(
                        "744460",
                        style: themedata.textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "RC Status",
                        style: themedata.textTheme.bodyLarge!.copyWith(
                          color: kGreyTextColor,
                        ),
                      ),
                      Text(
                        "No",
                        style: themedata.textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Winning Amount",
                        style: themedata.textTheme.bodyLarge!.copyWith(
                          color: kGreyTextColor,
                        ),
                      ),
                      Text(
                        "52000",
                        style: themedata.textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Increment Amount",
                        style: themedata.textTheme.bodyLarge!.copyWith(
                          color: kGreyTextColor,
                        ),
                      ),
                      Text(
                        "0",
                        style: themedata.textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.calendarIcon,
                      height: 18,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "17 Mar 2023 11:00 AM",
                      style: themedata.textTheme.bodyLarge!.copyWith(
                        color: kGreenColor,
                        fontSize: 16 * SizeConfig.safeAreaTextScalingFactor,
                      ),
                    ),
                  ],
                ),
                Text(
                  "|",
                  style: themedata.textTheme.bodyLarge!.copyWith(
                    color: kGreyTextColor,
                    fontSize: 16 * SizeConfig.safeAreaTextScalingFactor,
                  ),
                ),
                Flexible(
                  child: Text(
                    "17 Mar 2023 06:06 PM",
                    style: themedata.textTheme.bodyLarge!.copyWith(
                      overflow: TextOverflow.ellipsis,
                      color: kRedColor,
                      fontSize: 16 * SizeConfig.safeAreaTextScalingFactor,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 1,
              height: 25,
            ),
            Center(
              child: Text(
                "Pending For Approval",
                style: themedata.textTheme.bodyLarge!.copyWith(
                  color: kGreyTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16 * SizeConfig.safeAreaTextScalingFactor,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  showIncreaseBidDailog(context, themedata);
                },
                child: const Text("Increase Bid Amount"),
              ),
            )
          ],
        ),
      ),
    );
  }

  void showIncreaseBidDailog(BuildContext context, ThemeData themeData) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Increase Bid Amount',
                  style: themeData.textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Enter Amount",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          height: SizeConfig.screenHeight / 17,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: kGreyTextColor,
                            ),
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Cancel",
                              style:
                                  themeData.textTheme.titleMedium!.copyWith(),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: SizeConfig.screenHeight / 17,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Submit",
                              style: themeData.textTheme.titleMedium!.copyWith(
                                color: kWhiteColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
