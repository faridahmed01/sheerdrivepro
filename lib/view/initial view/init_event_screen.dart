import 'package:flutter/material.dart';
import 'package:sheerdrivepro/view/initial%20view/init_live_event_screen.dart';

import '../../common/status_bar_color.dart';
import 'init_upcoming_event_screen.dart';

class InitEventScreen extends StatefulWidget {
  const InitEventScreen({super.key});

  @override
  State<InitEventScreen> createState() => _InitEventScreenState();
}

class _InitEventScreenState extends State<InitEventScreen> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: StatusBarColorChanger(
        isColorChange: false,
        child: SafeArea(
          child: Scaffold(
            appBar: TabBar(
              tabs: [
                Tab(text: "Live Events"),
                Tab(text: "Future Events"),
              ],
            ),
            body: TabBarView(
              children: [
                InitLiveEventsScreen(),
                InitUpcomingEventsScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
