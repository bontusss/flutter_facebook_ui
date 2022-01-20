import 'package:facebook/data/data.dart';
import 'package:facebook/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ForYou extends StatelessWidget {
  const ForYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (_, index) {
          return PostContainer(post: videos, index: index);
        },
        itemCount: videos.length,
      ),
    );
  }
}
