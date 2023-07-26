import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheerdrivepro/common/size_config.dart';

import '../../common/assets.dart';
import '../../constant.dart';

class InitialViewCommonCard extends StatelessWidget {
  const InitialViewCommonCard({
    super.key,
    required this.eventHeading,
    required this.noOfitems,
    required this.location,
    required this.startDate,
    required this.endDate,
  });

  final String eventHeading;
  final String noOfitems;
  final String location;
  final String startDate;
  final String endDate;

  @override
  Widget build(BuildContext context) {
    var themedata = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        padding: const EdgeInsets.all(10),
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
        // height: SizeConfig.screenHeight / 4,
        width: SizeConfig.screenWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              eventHeading,
              style: themedata.textTheme.titleLarge!.copyWith(
                  fontSize: 18 * SizeConfig.safeAreaTextScalingFactor,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: SvgPicture.asset(
                        Assets.locationIcon,
                        height: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      location,
                      style: themedata.textTheme.bodyLarge!.copyWith(
                        fontSize: 16 * SizeConfig.safeAreaTextScalingFactor,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "No of Items: ",
                      style: themedata.textTheme.bodyLarge!.copyWith(
                        fontSize: 16 * SizeConfig.safeAreaTextScalingFactor,
                      ),
                    ),
                    Text(
                      noOfitems,
                      style: themedata.textTheme.bodyLarge!.copyWith(
                        fontSize: 16 * SizeConfig.safeAreaTextScalingFactor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
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
                      startDate,
                      style: themedata.textTheme.bodyLarge!.copyWith(
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
                    endDate,
                    style: themedata.textTheme.bodyLarge!.copyWith(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 16 * SizeConfig.safeAreaTextScalingFactor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Closed Auction Format",
                style: themedata.textTheme.bodyLarge!.copyWith(
                  color: kRedColor,
                  fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
