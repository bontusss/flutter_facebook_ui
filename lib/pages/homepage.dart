import 'package:facebook/data/data.dart';
import 'package:facebook/palette.dart';
import 'package:facebook/widgets/widgets.dart';
import 'package:flutter/material.dart';

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
            ),
            const SliverToBoxAdapter(
              child: CreatePost(),
            ),
            SliverToBoxAdapter(
              child: OnlineUsers(
                onlineUsers: onlineUsers,
              ),
            )
          ],
        ),
      ),
    );
  }
}
