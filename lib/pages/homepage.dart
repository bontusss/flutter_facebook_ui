import 'package:facebook/data/data.dart';
import 'package:facebook/pages/pages.dart';
import 'package:facebook/palette.dart';
import 'package:facebook/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            CustomAppBar(
              unreadMessages: currentUser.unReadMessages,
              letterSpacing: -1.6,
              appName: 'Facebook',
              color: Palette.facebookblue,
              widgets: [
                ActionItems(
                  icon: Icons.search,
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const SearchPage(),
                      ),
                    ),
                  },
                ),
                ActionItems(
                  icon: MdiIcons.facebookMessenger,
                  message: true,
                  unreadMessages: currentUser.unReadMessages,
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const Messenger(),
                      ),
                    ),
                  },
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: CreatePost(
                // key: const PageStorageKey('createpost'),
                imageUrl: currentUser.imageUrl,
                color: Colors.white,
                bidgets: bidgets,
              ),
            ),
            SliverToBoxAdapter(
              child: OnlineUsers(
                key: const PageStorageKey('onlineusers'),
                onlineUsers: onlineUsers,
              ),
            ),
            SliverToBoxAdapter(
              child: Stories(
                key: const PageStorageKey('stories'),
                stories: stories,
                user: currentUser,
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return PostContainer(
                  post: posts,
                  index: index,
                );
              }, childCount: posts.length),
            ),
          ],
        ),
      ),
    );
  }
}
