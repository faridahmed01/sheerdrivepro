import 'package:flutter/material.dart';

import '../../common/size_config.dart';
import '../../constant.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var themedata = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
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
                          "Mobile No",
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
                          labelText: "Enter Mobile No.",
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Email",
                          style: themedata.textTheme.bodyLarge!.copyWith(
                            fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                            letterSpacing: 0.2,
                            color: kBlackColor,
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Enter email",
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Join Date",
                          style: themedata.textTheme.bodyLarge!.copyWith(
                            fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                            letterSpacing: 0.2,
                            color: kBlackColor,
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Enter Join Date",
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Location",
                          style: themedata.textTheme.bodyLarge!.copyWith(
                            fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                            letterSpacing: 0.2,
                            color: kBlackColor,
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Enter Location",
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Category",
                          style: themedata.textTheme.bodyLarge!.copyWith(
                            fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                            letterSpacing: 0.2,
                            color: kBlackColor,
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Enter Category",
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "GST Number",
                          style: themedata.textTheme.bodyLarge!.copyWith(
                            fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                            letterSpacing: 0.2,
                            color: kBlackColor,
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Enter GST Number",
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Update"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
