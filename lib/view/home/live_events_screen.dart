import 'package:flutter/material.dart';
import 'package:sheerdrivepro/common/routes.dart';

import '../../common/common_event_list_card.dart';
import '../../common/size_config.dart';
import '../../constant.dart';

class LiveEventsScreen extends StatelessWidget {
  const LiveEventsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var themedata = Theme.of(context);
    // DashboardProvider dashboardProvider =
    //     Provider.of<DashboardProvider>(context);
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
          LiveEventList(themedata: themedata),
        ],
      ),
    );
  }
}

class LiveEventList extends StatelessWidget {
  const LiveEventList({
    super.key,
    required this.themedata,
  });

  final ThemeData themedata;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.screenHeight / 1.4,
      child: CustomScrollView(
        slivers: [
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CircularProgressIndicator(
                color: kPrimaryColor,
                backgroundColor: kPrimaryLightColor,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              top: 0.0,
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    // margin: const EdgeInsets.only(top: 4, bottom: 4.0),
                    child: Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                      child: InkWell(
                        onTap: () async {
                          Navigator.of(context).pushNamed(
                            Routes.auctionScreen,
                          );
                        },
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                        child: const CommonEventListCard(
                          category: 'CV',
                          eventHeading:
                              'Manappuram CV Rajasthan Online Auction',
                          startDate: '06 Jul 2023 01:00 PM',
                          location: 'North',
                          eventID: '48398',
                          noOfitems: '1',
                          endDate: '10 Jul 2023 04:00 PM',
                        ),
                      ),
                    ),
                  );
                },
                childCount: 10,
              ),
            ),
          ),
        ],
      ),
    );

    // SizedBox(
    //   height: SizeConfig.screenHeight,
    //   child: ListView.builder(
    //     padding: const EdgeInsets.symmetric(vertical: 10),
    //     physics: const ScrollPhysics(),
    //     shrinkWrap: true,
    //     itemCount: 10,
    //     itemBuilder: (context, index) {
    //       return Material(
    //         color: kWhiteColor,
    //         child: InkWell(
    //           splashColor: themedata.primaryColor.withOpacity(0.3),
    //           onTap: () {
    //             Navigator.of(context).pushNamed(
    //               Routes.auctionScreen,
    //             );
    //           },
    //           child: const CommonEventListCard(
    //             category: 'CV',
    //             eventHeading: 'Manappuram CV Rajasthan Online Auction',
    //             startDate: '06 Jul 2023 01:00 PM',
    //             location: 'North',
    //             eventID: '48398',
    //             noOfitems: '1',
    //             endDate: '10 Jul 2023 04:00 PM',
    //           ),
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
