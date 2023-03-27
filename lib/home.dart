import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'tabs/cook_tab.dart';
import 'tabs/list_tab.dart';
import 'tabs/notifications_tab.dart';
import 'tabs/profile_tab.dart';
import 'tabs/search_tab.dart';
import 'theme/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    ListTab(),
    SearchTab(),
    CookTab(),
    NotificationsTab(),
    ProfileTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 15,
              offset: Offset(0, 0),
            ),
          ],
        ),
        height: 80,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: bgColor,
          iconSize: 24,
          elevation: 2,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? SvgPicture.asset("assets/icons/list-fill.svg",
                      colorFilter:
                          ColorFilter.mode(primaryColor, BlendMode.srcIn))
                  : SvgPicture.asset("assets/icons/list.svg",
                      colorFilter:
                          ColorFilter.mode(Colors.black, BlendMode.srcIn)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? SvgPicture.asset("assets/icons/search.svg",
                      height: 24,
                      colorFilter:
                          ColorFilter.mode(primaryColor, BlendMode.srcIn))
                  : SvgPicture.asset("assets/icons/search.svg",
                      colorFilter:
                          ColorFilter.mode(Colors.black, BlendMode.srcIn)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? SvgPicture.asset("assets/icons/cook-fill.svg",
                      colorFilter:
                          ColorFilter.mode(primaryColor, BlendMode.srcIn))
                  : SvgPicture.asset("assets/icons/cook.svg",
                      colorFilter:
                          ColorFilter.mode(Colors.black, BlendMode.srcIn)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 3
                  ? SvgPicture.asset("assets/icons/not-fill.svg",
                      colorFilter:
                          ColorFilter.mode(primaryColor, BlendMode.srcIn))
                  : SvgPicture.asset("assets/icons/not.svg",
                      colorFilter:
                          ColorFilter.mode(Colors.black, BlendMode.srcIn)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 4
                  ? SvgPicture.asset("assets/icons/user-fill.svg",
                      colorFilter:
                          ColorFilter.mode(primaryColor, BlendMode.srcIn))
                  : SvgPicture.asset("assets/icons/user.svg",
                      colorFilter:
                          ColorFilter.mode(Colors.black, BlendMode.srcIn)),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
