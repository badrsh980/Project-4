import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBar createState() => _NavBar();
}

class _NavBar extends State<NavBar> with TickerProviderStateMixin {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    var anim = AnimationController(
      vsync: this,
      value: 1,
      duration: const Duration(milliseconds: 300),
    );
    return Scaffold(
      extendBody: true,
      body: Container(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          bottom: 10,
        ),
        child: DotNavigationBar(
          margin: const EdgeInsets.symmetric(horizontal: 50),
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          dotIndicatorColor: Color(0xff273a67),
          unselectedItemColor: Color(0xff10141d),
          splashBorderRadius: 50,
          backgroundColor: Color(0xfff8ce81),

          //enableFloatingNavBar: false,
          onTap: _handleIndexChanged,
          items: [
            /// Home
            DotNavigationBarItem(
              icon: const Icon(Icons.home_outlined),
              selectedColor: Color(0xff273a67),
            ),

            /// Likes
            DotNavigationBarItem(
              icon: const Icon(Icons.search_rounded),
              selectedColor: Color(0xff273a67),
            ),

            /// Search
            DotNavigationBarItem(
              icon: const Icon(Icons.shopping_bag_outlined),
              selectedColor: const Color(0xff273a67),
            ),

            /// Profile
            DotNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              selectedColor: const Color(0xff273a67),
            ),
          ],
        ),
      ),
    );
  }
}

enum _SelectedTab { home, favorite, search, person }
