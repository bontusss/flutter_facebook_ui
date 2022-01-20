import 'dart:ui';

import 'package:facebook/data/data.dart';
import 'package:facebook/models/models.dart';
import 'package:facebook/widgets/post_buttons.dart';
import 'package:facebook/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PostContainer extends StatelessWidget {
  final List post;

  final int index;
  const PostContainer({Key? key, required this.post, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _PostHeader(
            post: post,
            index: index,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Text(post[index].content!),
          ),
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(post[index].imageUrl!),
              ),
            ),
          ),
          PostBottons(
            post: posts,
            index: index,
          )
        ],
      ),
    );
  }
}

class _PostHeader extends StatelessWidget {
  final int index;
  final List post;
  const _PostHeader({Key? key, required this.index, required this.post})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _index = post[index];
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Avatar(imageUrl: _index.user.imageUrl),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _index.user.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '${_index.timeAgo} .',
                      style: const TextStyle(color: Colors.grey),
                    ),
                    const Icon(
                      Icons.public,
                      size: 16,
                      color: Colors.grey,
                    )
                  ],
                )
              ],
            ),
          ),
          const Icon(
            Icons.more_horiz,
            // size: 20,
          )
        ],
      ),
    );
  }
}
