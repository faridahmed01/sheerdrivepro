import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/assets.dart';
import '../../common/size_config.dart';
import '../../constant.dart';

class BuyerInquiryScreen extends StatefulWidget {
  const BuyerInquiryScreen({super.key});

  @override
  State<BuyerInquiryScreen> createState() => _BuyerInquiryScreenState();
}

class _BuyerInquiryScreenState extends State<BuyerInquiryScreen> {
  String? designation;
  List<String> designationList = [
    "Test Store 1",
    "Test Store 2",
    "Test Store 3"
  ];
  @override
  Widget build(BuildContext context) {
    var themedata = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Buyer Inquiry"),
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
        child: SizedBox(
          height: SizeConfig.screenHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 10,
                  right: 10,
                ),
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "First Name",
                          style: themedata.textTheme.bodyLarge!.copyWith(
                            fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                            letterSpacing: 0.2,
                            color: kBlackColor,
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "EnterFirst Name",
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Last Name",
                          style: themedata.textTheme.bodyLarge!.copyWith(
                            fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                            letterSpacing: 0.2,
                            color: kBlackColor,
                          ),
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: "Enter Last Name",
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Phone No.",
                          style: themedata.textTheme.bodyLarge!.copyWith(
                            fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                            letterSpacing: 0.2,
                            color: kBlackColor,
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Enter Phone No.",
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Select Store",
                          style: themedata.textTheme.bodyLarge!.copyWith(
                            fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                            letterSpacing: 0.2,
                            color: kBlackColor,
                          ),
                        ),
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButtonFormField<String>(
                          validator: (String? val) {
                            if (val == null) {
                              return 'Select Store is Required';
                            } else if (val.isEmpty) {
                              return 'Select Store is Required';
                            } else {
                              return null;
                            }
                          },
                          isExpanded: true,
                          isDense: true,
                          value: designation,
                          decoration: const InputDecoration(
                            labelText: 'Select Store',
                          ),
                          items: designationList
                              .map(
                                (String des) => DropdownMenuItem<String>(
                                  value: des,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(des),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                              .toList(),
                          onChanged: (String? value) {
                            setState(() {
                              designation = value;
                            });
                          },
                          onSaved: (String? value) {
                            setState(() {
                              designation = value;
                            });
                          },
                          // style: themedata.textTheme.bodyLarge!.copyWith(
                          //   fontSize: 20 * SizeConfig.safeAreaTextScalingFactor,
                          // ),
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
}
