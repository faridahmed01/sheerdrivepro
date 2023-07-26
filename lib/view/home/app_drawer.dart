import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheerdrivepro/common/routes.dart';
import 'package:sheerdrivepro/globals.dart';

import '../../common/assets.dart';
import '../../common/size_config.dart';
import '../../constant.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    var themeData = Theme.of(context);

    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.only(
              top: 60.0,
              left: 8.0,
              right: 8.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: SvgPicture.asset(
                    Assets.sheerdriveProLogoIcon,
                    width: 60 * SizeConfig.safeBlockHorizontal,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Employee Chandni Jain',
                    style: themeData.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                      color: kBlackColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            dense: true,
            minLeadingWidth: 30,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 2.0,
            ),
            leading: SvgPicture.asset(
              Assets.myProfileIcon,
            ),
            horizontalTitleGap: 10,
            style: ListTileStyle.drawer,
            visualDensity: VisualDensity.compact,
            minVerticalPadding: 0,
            title: Text(
              'Profile',
              style: themeData.textTheme.bodyLarge!.copyWith(
                fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                letterSpacing: 0.2,
                color: kBlackColor,
              ),
            ),
            onTap: () {},
          ),
          const Divider(
            color: kLightGreyColor,
            height: 0,
            thickness: 0.5,
          ),
          ListTile(
            dense: true,
            minLeadingWidth: 30,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 2.0,
            ),
            leading: SvgPicture.asset(
              Assets.myWinsIcon,
            ),
            horizontalTitleGap: 10,
            style: ListTileStyle.drawer,
            visualDensity: VisualDensity.compact,
            minVerticalPadding: 0,
            title: Text(
              'My Wins',
              style: themeData.textTheme.bodyLarge!.copyWith(
                fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                letterSpacing: 0.2,
                color: kBlackColor,
              ),
            ),
            onTap: () {
              Navigator.of(context).popAndPushNamed(
                Routes.winsScreen,
              );
            },
          ),
          const Divider(
            color: kLightGreyColor,
            height: 0,
            thickness: 0.5,
          ),
          ListTile(
            dense: true,
            minLeadingWidth: 30,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 2.0,
            ),
            leading: SvgPicture.asset(
              Assets.watchListIcon,
            ),
            horizontalTitleGap: 10,
            style: ListTileStyle.drawer,
            visualDensity: VisualDensity.compact,
            minVerticalPadding: 0,
            title: Text(
              'Watch List',
              style: themeData.textTheme.bodyLarge!.copyWith(
                fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                letterSpacing: 0.2,
                color: kBlackColor,
              ),
            ),
            onTap: () {
              Navigator.of(context).popAndPushNamed(
                Routes.watchListScreen,
              );
            },
          ),
          const Divider(
            color: kLightGreyColor,
            height: 0,
            thickness: 0.5,
          ),
          ListTile(
            dense: true,
            minLeadingWidth: 30,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 2.0,
            ),
            leading: SvgPicture.asset(
              Assets.sendQouteIcon,
            ),
            horizontalTitleGap: 10,
            style: ListTileStyle.drawer,
            visualDensity: VisualDensity.compact,
            minVerticalPadding: 0,
            title: Text(
              'Send Quote Logs',
              style: themeData.textTheme.bodyLarge!.copyWith(
                fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                letterSpacing: 0.2,
                color: kBlackColor,
              ),
            ),
            onTap: () {},
          ),
          const Divider(
            color: kLightGreyColor,
            height: 0,
            thickness: 0.5,
          ),
          ListTile(
            dense: true,
            minLeadingWidth: 30,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 2.0,
            ),
            leading: SvgPicture.asset(
              Assets.careerIcon,
            ),
            horizontalTitleGap: 10,
            style: ListTileStyle.drawer,
            visualDensity: VisualDensity.compact,
            minVerticalPadding: 0,
            title: Text(
              'Career',
              style: themeData.textTheme.bodyLarge!.copyWith(
                fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                letterSpacing: 0.2,
                color: kBlackColor,
              ),
            ),
            onTap: () {
              Navigator.of(context).popAndPushNamed(
                Routes.careerScreen,
              );
            },
          ),
          const Divider(
            color: kLightGreyColor,
            height: 0,
            thickness: 0.5,
          ),
          ListTile(
            dense: true,
            minLeadingWidth: 30,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 2.0,
            ),
            leading: SvgPicture.asset(
              Assets.contactUsIcon,
            ),
            horizontalTitleGap: 10,
            style: ListTileStyle.drawer,
            visualDensity: VisualDensity.compact,
            minVerticalPadding: 0,
            title: Text(
              'Contact Us',
              style: themeData.textTheme.bodyLarge!.copyWith(
                fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                letterSpacing: 0.2,
                color: kBlackColor,
              ),
            ),
            onTap: () {
              Navigator.of(context).popAndPushNamed(
                Routes.contactUsScreen,
              );
            },
          ),
          const Divider(
            color: kLightGreyColor,
            height: 0,
            thickness: 0.5,
          ),
          ListTile(
            dense: true,
            minLeadingWidth: 30,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 2.0,
            ),
            leading: SvgPicture.asset(
              Assets.logoutIcon,
            ),
            horizontalTitleGap: 10,
            style: ListTileStyle.drawer,
            visualDensity: VisualDensity.compact,
            minVerticalPadding: 0,
            title: Text(
              'Logout',
              style: themeData.textTheme.bodyLarge!.copyWith(
                fontSize: 17 * SizeConfig.safeAreaTextScalingFactor,
                letterSpacing: 0.2,
                color: kBlackColor,
              ),
            ),
            onTap: () {
              navigatorKey.currentState!.pushNamedAndRemoveUntil(
                Routes.initEventScreen,
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
