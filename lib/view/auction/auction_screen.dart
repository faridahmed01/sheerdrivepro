import 'package:flutter/material.dart';
import 'package:sheerdrivepro/common/expandeble_text.dart';
import 'package:sheerdrivepro/common/size_config.dart';
import 'package:sheerdrivepro/constant.dart';

import 'close_auction_screen.dart';
import 'live_auction_screen.dart';

class AuctionScreen extends StatefulWidget {
  const AuctionScreen({super.key});

  @override
  State<AuctionScreen> createState() => _AuctionScreenState();
}

class _AuctionScreenState extends State<AuctionScreen>
    with SingleTickerProviderStateMixin {
  TabController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  String termsAndCondtionText =
      '1. All vehicles are sold on " As is where is basis". 2. All vehicles to be inspected by the bidder/ buyer before the auction & bidding. E.g. Physical condition/ nature etc. Bidders are bound by principle of caveat emptor (Buyer beware) 3. The bidder will be liable for transfer of vehicleAll vehicles are sold on " As is where is basis". 2. All vehicles to be inspected by the bidder/ buyer before the auction & bidding. E.g. Physical condition/ nature etc. Bidders are bound by principle of caveat emptor (Buyer beware) 3. The bidder will be liable for transfer of vehicle.';
  @override
  Widget build(BuildContext context) {
    var themedata = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              size: 22,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        title: const Text("Auction"),
      ),
      body: ListView(
        children: [
          Container(
            color: kTextFeildFillColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Card(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: SizeConfig.screenWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kWhiteColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Event Terms & Conditions:",
                          style: themedata.textTheme.bodyLarge!.copyWith(
                            color: kGreyTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                          ),
                        ),
                        ExpandableText(
                          termsAndCondtionText,
                          trimLines: 4,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(color: kWhiteColor),
            child: TabBar(
              controller: _controller,
              tabs: const [
                Tab(
                  text: 'Live Auctions',
                ),
                Tab(
                  text: 'Closed Auctions',
                ),
              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight,
            child: TabBarView(
              controller: _controller,
              children: const [
                LiveAuctionScreen(),
                CloseAuctionScreen(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
