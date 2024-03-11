import 'package:flutter/material.dart';

class PersistentBottomBarScaffold extends StatefulWidget {
  /// pass the required items for the tabs and BottomNavigationBar
  final List<PersistentTabItem> items;

  const PersistentBottomBarScaffold({Key? key, required this.items})
      : super(key: key);

  @override
  _PersistentBottomBarScaffoldState createState() =>
      _PersistentBottomBarScaffoldState();
}

class _PersistentBottomBarScaffoldState
    extends State<PersistentBottomBarScaffold> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        /// Check if curent tab can be popped
        if (widget.items[_selectedTab].navigatorkey?.currentState?.canPop() ??
            false) {
          widget.items[_selectedTab].navigatorkey?.currentState?.pop();
          return false;
        } else {
          // if current tab can't be popped then use the root navigator
          return true;
        }
      },
      child: Scaffold(
        /// Using indexedStack to maintain the order of the tabs and the state of the
        /// previously opened tab
        body: IndexedStack(
          index: _selectedTab,
          children: widget.items
              .map((page) => Navigator(
                    /// Each tab is wrapped in a Navigator so that naigation in
                    /// one tab can be independent of the other tabs
                    key: page.navigatorkey,
                    onGenerateInitialRoutes: (navigator, initialRoute) {
                      return [
                        MaterialPageRoute(builder: (context) => page.tab)
                      ];
                    },
                  ))
              .toList(),
        ),

        /// Define the persistent bottom bar
        /*bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 4,
          currentIndex: _selectedTab,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          backgroundColor: const Color(0xFF232322),
          selectedItemColor: const Color(0xFF3FCC7C),
          unselectedItemColor: Colors.white,
          onTap: (index) {
            /// Check if the tab that the user is pressing is currently selected
            if (index == _selectedTab) {
              /// if you want to pop the current tab to its root then use
              widget.items[index].navigatorkey?.currentState
                  ?.popUntil((route) => route.isFirst);

              /// if you want to pop the current tab to its last page
              /// then use
              // widget.items[index].navigatorkey?.currentState?.pop();
            } else {
              setState(() {
                _selectedTab = index;
              });
            }
          },
          items: widget.items
              .map((item) => BottomNavigationBarItem(
                  icon: Icon(item.icon), label: item.title))
              .toList(),
        ),*/
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              _selectedTab = index;
            });
          },
          selectedIndex: _selectedTab,
          height: 45,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          backgroundColor: const Color(0xFF232322),
          animationDuration: const Duration(milliseconds: 2000),
          //isdark ? const Color.fromARGB(255, 37, 37, 36) : Colors.white,
          indicatorColor: const Color(0xFF3FCC7C),
          surfaceTintColor: Color(0xFF232322),
          destinations: const [
            NavigationDestination(
                icon: Icon(
                  Icons.home_outlined,
                  size: 27,
                  color: Colors.white,
                ),
                label: 'Activity'),
            NavigationDestination(
                icon: Icon(
                  Icons.grid_view_outlined,
                  size: 27,
                  color: Colors.white,
                ),
                label: 'Recipes'),
            NavigationDestination(
                icon: Icon(
                  Icons.access_time_outlined,
                  size: 27,
                  color: Colors.white,
                ),
                label: 'Analytics'),
            NavigationDestination(
                icon: Icon(
                  Icons.settings_outlined,
                  size: 27,
                  color: Colors.white,
                ),
                label: 'Setting'),
          ],
        ),

        backgroundColor: const Color(0xFF232322),
      ),
    );
  }
}

/// Model class that holds the tab info for the [PersistentBottomBarScaffold]
class PersistentTabItem {
  final Widget tab;
  final GlobalKey<NavigatorState>? navigatorkey;
  final String title;
  final IconData icon;

  PersistentTabItem(
      {required this.tab,
      this.navigatorkey,
      required this.title,
      required this.icon});
}
