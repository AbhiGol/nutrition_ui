import 'package:flutter/material.dart';
import 'package:nutrition_ui/activitypage.dart';
import 'package:nutrition_ui/analytics.dart';
import 'package:nutrition_ui/pre.dart';
import 'package:nutrition_ui/recipes.dart';
import 'package:nutrition_ui/setting.dart';

class HomePage extends StatelessWidget {
  final _tab1navigatorKey = GlobalKey<NavigatorState>();
  final _tab2navigatorKey = GlobalKey<NavigatorState>();
  final _tab3navigatorKey = GlobalKey<NavigatorState>();
  final _tab4navigatorKey = GlobalKey<NavigatorState>();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentBottomBarScaffold(
      items: [
        PersistentTabItem(
          tab: const ActivityPage(),
          icon: Icons.home_outlined,
          title: 'Activity',
          navigatorkey: _tab1navigatorKey,
        ),
        PersistentTabItem(
          tab: const Recipes(),
          icon: Icons.grid_view_outlined,
          title: 'Recipes',
          navigatorkey: _tab2navigatorKey,
        ),
        PersistentTabItem(
          tab: const Analytics(),
          icon: Icons.access_time_outlined,
          title: 'Analytics',
          navigatorkey: _tab3navigatorKey,
        ),
        PersistentTabItem(
          tab: const Setting(),
          icon: Icons.settings_outlined,
          title: 'Setting',
          navigatorkey: _tab4navigatorKey,
        ),
      ],
    );
  }
}
