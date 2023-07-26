import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sheerdrivepro/common/assets.dart';
import '/view/home/app_drawer.dart';

import '../../constant.dart';
import 'future_events_screen.dart';
import 'live_events_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: const AppDrawer(),
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
              icon: SvgPicture.asset(
                Assets.menuIcon,
                colorFilter:
                    const ColorFilter.mode(kBlackColor, BlendMode.srcIn),
                fit: BoxFit.contain,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          title: const Text("Events"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                Assets.refreshIcon,
              ),
            )
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: "Live Events"),
              Tab(text: "Future Events"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            LiveEventsScreen(),
            FutureEventsScreen(),
          ],
        ),
      ),
    );
  }
}
