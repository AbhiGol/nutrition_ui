import 'package:flutter/material.dart';
import 'package:nutrition_ui/activitypage.dart';
import 'package:nutrition_ui/analytics.dart';
import 'package:nutrition_ui/first.dart';
import 'package:nutrition_ui/recipes.dart';
import 'package:nutrition_ui/setting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: First());
  }
}

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  bool isdark = false;

  ThemeMode _themeMode = ThemeMode.system;
  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
      if (_themeMode == ThemeMode.dark) {
        isdark = true;
      } else {
        isdark = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          selectedIndex: _selectedIndex,
          height: 55,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          backgroundColor: Color(0xFF232322),
          animationDuration: const Duration(milliseconds: 2000),
          //isdark ? const Color.fromARGB(255, 37, 37, 36) : Colors.white,
          indicatorColor: const Color(0xFF3FCC7C),
          destinations: const <Widget>[
            NavigationDestination(
                icon: Icon(
                  Icons.home_outlined,
                  size: 27,
                ),
                label: 'Activity'),
            NavigationDestination(
                icon: Icon(
                  Icons.grid_view_outlined,
                  size: 27,
                ),
                label: 'Recipes'),
            NavigationDestination(
                icon: Icon(
                  Icons.access_time_outlined,
                  size: 27,
                ),
                label: 'Analytics'),
            NavigationDestination(
                icon: Icon(
                  Icons.settings_outlined,
                  size: 27,
                ),
                label: 'Setting'),
          ],
        ),
        body: <Widget>[
          const ActivityPage(),
          const Recipes(),
          const Analytics(),
          const Setting(),
        ][_selectedIndex],
      ),
    );
  }
}
