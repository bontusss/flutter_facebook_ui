import 'package:facebook/pages/homepage.dart';
import 'package:facebook/palette.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NavPage extends StatefulWidget {
  const NavPage({Key? key}) : super(key: key);

  @override
  _NavPageState createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  var currentIndex = 0;
  void onTap(index) {
    setState(() {
      currentIndex = index;
    });
  }

  var pages = const [
    HomePage(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Palette.facebookblue.withOpacity(0.8),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(MdiIcons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Friends'),
          BottomNavigationBarItem(
              icon: Icon(Icons.ondemand_video), label: 'Watch'),
          BottomNavigationBarItem(
              icon: Icon(MdiIcons.accountGroupOutline), label: 'Groups'),
          BottomNavigationBarItem(
              icon: Icon(MdiIcons.bellOutline), label: 'Notification'),
          BottomNavigationBarItem(icon: Icon(MdiIcons.menu), label: 'Home'),
        ],
      ),
    );
  }
}
