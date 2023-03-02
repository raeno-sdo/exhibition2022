import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import 'package:exhibition2022/pages/top.dart';
import 'package:exhibition2022/pages/access.dart';
import 'package:exhibition2022/pages/liveStreaming.dart';
import 'package:exhibition2022/pages/questionnaire.dart';

class CommonPage extends StatelessWidget {
  const CommonPage({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    final size = MediaQuery.of(context).size;
    final pages = [
      TopPage(),
      const AccessPage(),
      const LiveStreamingPage(),
      const QuestionnairePage(),
    ];

    return Scaffold(
      body: PersistentTabView(
        context,
        screens: pages,
        navBarStyle: (size.width > 800)
          ? NavBarStyle.style3
          : NavBarStyle.style9,
          backgroundColor: Colors.white,
        items: [
          PersistentBottomNavBarItem(
            title: 'トップ',
            icon: const FaIcon(FontAwesomeIcons.house),
            inactiveIcon: const FaIcon(FontAwesomeIcons.house),
            activeColorPrimary: const Color.fromARGB(255, 0, 137, 193),
            inactiveColorPrimary: Colors.black38,
          ),
          PersistentBottomNavBarItem(
            title: 'アクセス',
            icon: const Icon(FontAwesomeIcons.locationDot),
            inactiveIcon: const FaIcon(FontAwesomeIcons.locationDot),
            activeColorPrimary: const Color.fromARGB(255, 0, 137, 193),
            inactiveColorPrimary: Colors.black38,
          ),
          PersistentBottomNavBarItem(
            title: '会場配信',
            icon: const FaIcon(FontAwesomeIcons.youtube),
            inactiveIcon: const FaIcon(FontAwesomeIcons.youtube),
            activeColorPrimary: const Color.fromARGB(255, 0, 137, 193),
            inactiveColorPrimary: Colors.black38,
          ),
          PersistentBottomNavBarItem(
            title: 'アンケート',
            icon: const FaIcon(FontAwesomeIcons.solidPenToSquare),
            inactiveIcon: const Icon(FontAwesomeIcons.solidPenToSquare),
            activeColorPrimary: const Color.fromARGB(255, 0, 137, 193),
            inactiveColorPrimary: Colors.black38,
          ),
        ],
      ),
    );
  }
}