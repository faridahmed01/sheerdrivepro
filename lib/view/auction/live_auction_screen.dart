import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheerdrivepro/common/size_config.dart';
import 'package:sheerdrivepro/constant.dart';

import '../../common/assets.dart';

class LiveAuctionScreen extends StatefulWidget {
  const LiveAuctionScreen({
    super.key,
  });

  @override
  State<LiveAuctionScreen> createState() => _LiveAuctionScreenState();
}

class _LiveAuctionScreenState extends State<LiveAuctionScreen> {
  String bodytext =
      "Repo Date-14-03-2023 // Parked at-GADAPANI PARKING -yms10003 Sundarpur Joysagar Sivasagar PIN-785665 // Parking charges Rs. 100 Per day // Buyer need to check all the details properly before biding like Images/Challan/Tax/Parking charges etc.!! Also check vehicle condition properly.//Accidental Condition (Total/ Part) - Partially Available & Locked";
  @override
  Widget build(BuildContext context) {
    var themedata = Theme.of(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
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
                )
              ],
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "AS04AA3924 | Datsun GO T",
                      style: themedata.textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                      ),
                    ),
                    Material(
                      color: kWhiteColor,
                      child: InkWell(
                        onTap: () {
                          showCustomDialog(context, themedata);
                        },
                        splashColor: kWhiteColor,
                        child: Container(
                          decoration: BoxDecoration(
                            color: themedata.primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            child: Center(
                              child: Text(
                                "Add Watch List ",
                                style: themedata.textTheme.bodyLarge!.copyWith(
                                  color: kWhiteColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: SizeConfig.screenHeight / 7,
                          width: SizeConfig.screenHeight / 7,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              colorFilter: ColorFilter.mode(
                                Colors.black54,
                                BlendMode.softLight,
                              ),
                              image: NetworkImage(
                                  "https://media.mahindrafirstchoice.com/live_web_images/usedcarsimg/mfc/3973/523246/cover_image-20220731110840.jpeg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight / 7,
                          width: SizeConfig.screenHeight / 7,
                          child: Align(
                            alignment: Alignment.center,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.remove_red_eye_rounded,
                                color: kWhiteColor,
                                size: 32,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "No. of Bids : ",
                              ),
                              Text(
                                "10",
                                style: themedata.textTheme.bodyLarge!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Text("No. of Bids Lefts: "),
                              Text(
                                "10",
                                style: themedata.textTheme.bodyLarge!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
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
                            "Ref.Id",
                            style: themedata.textTheme.bodyLarge!.copyWith(
                              color: kGreyTextColor,
                            ),
                          ),
                          Text(
                            "833694",
                            style: themedata.textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  17 * SizeConfig.safeAreaTextScalingFactor,
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
                            "11858010",
                            style: themedata.textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  17 * SizeConfig.safeAreaTextScalingFactor,
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
                            "Engine No",
                            style: themedata.textTheme.bodyLarge!.copyWith(
                              color: kGreyTextColor,
                            ),
                          ),
                          Text(
                            "B4AA403E007655",
                            style: themedata.textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  17 * SizeConfig.safeAreaTextScalingFactor,
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
                            "Chassis No",
                            style: themedata.textTheme.bodyLarge!.copyWith(
                              color: kGreyTextColor,
                            ),
                          ),
                          Text(
                            "MDHFBACD0L6413106",
                            style: themedata.textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  17 * SizeConfig.safeAreaTextScalingFactor,
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
                            "Mfg Year",
                            style: themedata.textTheme.bodyLarge!.copyWith(
                              color: kGreyTextColor,
                            ),
                          ),
                          Text(
                            "2020",
                            style: themedata.textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  17 * SizeConfig.safeAreaTextScalingFactor,
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
                            "RC Book Status",
                            style: themedata.textTheme.bodyLarge!.copyWith(
                              color: kGreyTextColor,
                            ),
                          ),
                          Text(
                            "Yes",
                            style: themedata.textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  17 * SizeConfig.safeAreaTextScalingFactor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const Divider(
                  height: 25,
                  thickness: 1,
                ),
                Text(
                  "Sheerdrive Pro Cont.",
                  style: themedata.textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Nikhil (9137386788) ",
                      style: themedata.textTheme.titleSmall!.copyWith(
                        fontSize: 15 * SizeConfig.safeAreaTextScalingFactor,
                      ),
                    ),
                    const Text(" | "),
                    Text(
                      "Paras (7710060450)",
                      style: themedata.textTheme.titleSmall!.copyWith(
                        fontSize: 15 * SizeConfig.safeAreaTextScalingFactor,
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
                          "07 Jul 2023 06:00 PM",
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
                        "11 Jul 2023 03:40 PM",
                        style: themedata.textTheme.bodyLarge!.copyWith(
                          overflow: TextOverflow.ellipsis,
                          color: kRedColor,
                          fontSize: 16 * SizeConfig.safeAreaTextScalingFactor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Remark:",
                  style: themedata.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: kGreyTextColor,
                    fontSize: 15 * SizeConfig.safeAreaTextScalingFactor,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(bodytext),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text("Submit"),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  void showCustomDialog(BuildContext context, ThemeData themeData) {
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
                const Text(
                  'After adding in your watchlist, you can see this vehicle in your watchlist.',
                  style: TextStyle(
                    fontSize: 16.0,
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
                              "OK",
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
