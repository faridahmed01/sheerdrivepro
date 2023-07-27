import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sheerdrivepro/common/size_config.dart';
import 'package:sheerdrivepro/constant.dart';

class AuctionDetailsScreen extends StatefulWidget {
  const AuctionDetailsScreen({super.key});

  @override
  State<AuctionDetailsScreen> createState() => _AuctionDetailsScreenState();
}

class _AuctionDetailsScreenState extends State<AuctionDetailsScreen> {
  String remarkText =
      "Repo Date-14-03-2023 // Parked at-GADAPANI PARKING -yms10003 Sundarpur Joysagar Sivasagar PIN-785665 // Parking charges Rs. 100 Per day // Buyer need to check all the details properly before biding like Images/Challan/ Tax/Parking charges etc.!! Also check vehicle condition properly.//Accidental Condition (Total/ Part) - Partially Available & Locked";

  final urlImages = [
    'https://picsum.photos/250?image=1',
    'https://picsum.photos/250?image=2',
    'https://picsum.photos/250?image=3',
    'https://picsum.photos/250?image=4',
    'https://picsum.photos/250?image=5',
    'https://picsum.photos/250?image=6',
  ];

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 22),
              child: Container(
                padding: const EdgeInsets.all(10),
                width: SizeConfig.screenWidth,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(10),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "AS04AA3924 | 2020 | Datsun GO T",
                      style: themedata.textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CarouselSlider.builder(
                      itemCount: urlImages.length,
                      itemBuilder: (context, index, realindex) {
                        final urlImage = urlImages[index];
                        return GestureDetector(
                          onTap: () {
                            _showImageDialog(context, urlImages, index);
                          },
                          child: buildImage(urlImage, index),
                        );
                      },
                      options: CarouselOptions(
                        height: SizeConfig.screenHeight / 4,
                        autoPlay: true,
                        reverse: false,
                        enlargeCenterPage: true,
                        enableInfiniteScroll: false,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Auction. Id",
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
                                "Vehicle Type",
                                style: themedata.textTheme.bodyLarge!.copyWith(
                                  color: kGreyTextColor,
                                ),
                              ),
                              Text(
                                "4W",
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
                                "RC Status",
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
                                "Make",
                                style: themedata.textTheme.bodyLarge!.copyWith(
                                  color: kGreyTextColor,
                                ),
                              ),
                              Text(
                                "Datsun",
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
                                "Model",
                                style: themedata.textTheme.bodyLarge!.copyWith(
                                  color: kGreyTextColor,
                                ),
                              ),
                              Text(
                                "GO T",
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
                                "Variant",
                                style: themedata.textTheme.bodyLarge!.copyWith(
                                  color: kGreyTextColor,
                                ),
                              ),
                              Text(
                                "E483CDDM31452",
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
                                "Variant",
                                style: themedata.textTheme.bodyLarge!.copyWith(
                                  color: kGreyTextColor,
                                ),
                              ),
                              Text(
                                "MC270GRC0EA089551",
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
                      "Internal Remark:",
                      style: themedata.textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: kTextFeildFillColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      width: SizeConfig.screenWidth,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Parking Charges Rs. 100 Per day",
                          style: themedata.textTheme.titleMedium!.copyWith(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Remark:",
                      style: themedata.textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: kTextFeildFillColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      width: SizeConfig.screenWidth,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          remarkText,
                          style: themedata.textTheme.titleMedium!.copyWith(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Other Information",
                      style: themedata.textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          "Manufacture Year :",
                          style: themedata.textTheme.bodyLarge!.copyWith(
                            color: kGreyTextColor,
                          ),
                        ),
                        Text(
                          " 2014 ",
                          style: themedata.textTheme.bodyLarge!.copyWith(
                            color: kGreyTextColor,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Yard Details : ",
                          style: themedata.textTheme.bodyLarge!.copyWith(
                            color: kGreyTextColor,
                          ),
                        ),
                        Text(
                          " Karni Kripa Parking Yard ",
                          style: themedata.textTheme.bodyLarge!.copyWith(
                            color: kGreyTextColor,
                          ),
                        ),
                      ],
                    ),
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
                            child: Text("Bid Now"),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showImageDialog(
      BuildContext context, List<String> imageUrls, int initialIndex) {
    showDialog(
      context: context,
      builder: (context) {
        int currentIndex = initialIndex;
        return Dialog(
          insetPadding: const EdgeInsets.all(0),
          child: GestureDetector(
            onHorizontalDragEnd: (details) {
              if (details.primaryVelocity! < 0) {
                // Swipe left
                if (currentIndex < imageUrls.length - 1) {
                  currentIndex++;
                }
              } else if (details.primaryVelocity! > 0) {
                // Swipe right
                if (currentIndex > 0) {
                  currentIndex--;
                }
              }
              Navigator.of(context).pop();
              _showImageDialog(context, imageUrls, currentIndex);
            },
            child: Image.network(
              imageUrls[currentIndex],
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}

Widget buildImage(String urlImage, int index) => Container(
      width: SizeConfig.screenWidth,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          urlImage,
          fit: BoxFit.cover,
        ),
      ),
    );
