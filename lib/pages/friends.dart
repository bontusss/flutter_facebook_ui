import 'package:facebook/data/data.dart';
import 'package:facebook/pages/pages.dart';
import 'package:facebook/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Friends extends StatelessWidget {
  const Friends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // Scaffold.of(context).showSnackBar(snackbar)
        // ScaffoldMessenger.of(context).showSnackBar(snackBar),
        body: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            CustomAppBar(
              color: Colors.black,
              appName: 'Friends',
              widgets: [
                Container(
                  margin: const EdgeInsets.only(left: 45),
                  // color: Colors.black,
                  child: ActionItems(
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
                ),
              ],
            ),
            const SliverToBoxAdapter(
              child: FriendsMenu(),
            ),
            SliverToBoxAdapter(
              child: FriendsRequestsCard(
                headerText: 'Friend Requests',
                requestsNumber: 2,
                imageUrl: onlineUsers[8].imageUrl,
                name: 'Precious Akpabio',
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                  color: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: const Text(
                    'People You May Know',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return AddFriends(requests: requests, index: index);
              }, childCount: requests.length),
            ),
          ],
        ),
      ),
    );
  }
}
