import 'package:facebook/pages/pages.dart';
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
    HomePage(
      key: PageStorageKey('homepage'),
    ),
    Friends(
      key: PageStorageKey('Friends'),
    ),
    WatchVideo(key: PageStorageKey('videos')),
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
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(icon: Icon(MdiIcons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Friends'),
          BottomNavigationBarItem(
              icon: IconWithN(
                icon: Icons.ondemand_video,
              ),
              label: 'Watch'),
          BottomNavigationBarItem(
              icon: Icon(MdiIcons.accountGroupOutline), label: 'Groups'),
          BottomNavigationBarItem(
              icon: IconWithN(
                icon: MdiIcons.bellOutline,
                n: 50,
              ),
              label: 'Notification'),
          BottomNavigationBarItem(icon: Icon(MdiIcons.menu), label: 'Home'),
        ],
      ),
    );
  }
}

class IconWithN extends StatelessWidget {
  final IconData icon;
  final int n;
  const IconWithN({Key? key, required this.icon, this.n = 100})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(icon),
        Positioned(
          top: 0,
          right: 0,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 3),
              // width: 35,
              // height: 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.red,
              ),
              child: Text(
                n.toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 6,
                    color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
