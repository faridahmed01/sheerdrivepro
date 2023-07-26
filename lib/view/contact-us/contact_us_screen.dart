import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/assets.dart';
import '../../common/size_config.dart';
import '../../constant.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    var themedata = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Us"),
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
                          "Full Name",
                          style: themedata.textTheme.bodyLarge!.copyWith(
                            fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                            letterSpacing: 0.2,
                            color: kBlackColor,
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Enter Name",
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
                        keyboardType: TextInputType.number,
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
                          "Subject",
                          style: themedata.textTheme.bodyLarge!.copyWith(
                            fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                            letterSpacing: 0.2,
                            color: kBlackColor,
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Enter Subject",
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Message",
                          style: themedata.textTheme.bodyLarge!.copyWith(
                            fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                            letterSpacing: 0.2,
                            color: kBlackColor,
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Enter Message",
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
