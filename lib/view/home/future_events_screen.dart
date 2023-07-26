import 'package:flutter/material.dart';

import '../../common/common_event_list_card.dart';
import '../../common/size_config.dart';
import '../../constant.dart';

class FutureEventsScreen extends StatelessWidget {
  const FutureEventsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var themedata = Theme.of(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: SizeConfig.screenWidth,
            decoration: const BoxDecoration(
              color: kWhiteColor,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        color: themedata.primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            "Bank Repo (41)",
                            style: themedata.textTheme.displayLarge!.copyWith(
                              color: kWhiteColor,
                              fontSize:
                                  15 * SizeConfig.safeAreaTextScalingFactor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        color: kTextFeildborderColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            "Insurance Salvage (3)",
                            style: themedata.textTheme.displayLarge!.copyWith(
                              color: kBlackColor,
                              fontSize:
                                  15 * SizeConfig.safeAreaTextScalingFactor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        color: kTextFeildborderColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            "Exchange/Corporate (0)",
                            style: themedata.textTheme.displayLarge!.copyWith(
                              color: kBlackColor,
                              fontSize:
                                  15 * SizeConfig.safeAreaTextScalingFactor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: SizeConfig.screenHeight,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 10),
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Material(
                  color: kWhiteColor,
                  child: InkWell(
                    splashColor: themedata.primaryColor.withOpacity(0.3),
                    onTap: () {},
                    child: const CommonEventListCard(
                      isFutureEvent: true,
                      category: 'CV',
                      eventHeading: 'Manappuram CV Rajasthan Online Auction',
                      startDate: '06 Jul 2023 01:00 PM',
                      location: 'North',
                      eventID: '48398',
                      noOfitems: '1',
                      endDate: '10 Jul 2023 04:00 PM',
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
