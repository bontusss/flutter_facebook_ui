import 'package:facebook/palette.dart';
import 'package:facebook/widgets/live_videos.dart';
import 'package:facebook/widgets/widgets.dart';
import 'package:flutter/material.dart';

class WatchVideo extends StatefulWidget {
  const WatchVideo({Key? key}) : super(key: key);

  @override
  _WatchVideoState createState() => _WatchVideoState();
}

class _WatchVideoState extends State<WatchVideo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            CustomAppBar(appName: 'Watch', color: Colors.black, widgets: [
              ActionItems(icon: Icons.person, onPressed: () {}),
              ActionItems(icon: Icons.search, onPressed: () {})
            ]),
            const SliverToBoxAdapter(
              child: _MenuList(),
            ),
          ],
        ),
      ),
    );
  }
}

class _MenuList extends StatefulWidget {
  const _MenuList({Key? key}) : super(key: key);

  @override
  __MenuListState createState() => __MenuListState();
}

class __MenuListState extends State<_MenuList> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var tabTexts = ['For you', 'Live', 'Gaming', 'Following', 'Saved'];
    TabController _tabController =
        TabController(length: tabTexts.length, vsync: this);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              height: 30,
              child: TabBar(
                  labelColor: Palette.facebookblue,
                  unselectedLabelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue.withOpacity(0.2),
                  ),
                  isScrollable: true,
                  controller: _tabController,
                  tabs: tabTexts
                      .map(
                        (e) => Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 5),
                          child: Tab(
                            text: e,
                          ),
                        ),
                      )
                      .toList()),
            ),
            const Divider(
              color: Colors.grey,
            ),
            Container(
              color: Colors.white,
              // margin: const EdgeInsets.only(top: 5),
              width: double.maxFinite,
              height: 550,
              child: TabBarView(controller: _tabController, children: const [
                ForYou(),
                LiveVideos(),
                Text('Gaming'),
                Text('Following'),
                Text('Saved'),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
