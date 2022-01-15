import 'dart:ui';

import 'package:facebook/data/data.dart';
import 'package:facebook/palette.dart';
import 'package:facebook/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Avatar(
                  imageUrl: currentUser.imageUrl,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Expanded(
                  child: TextField(
                style: TextStyle(),
                minLines: 1,
                decoration:
                    InputDecoration.collapsed(hintText: "What's on your mind?"),
              ))
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                  label: const Text(
                    'Live',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(width: 25),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.photo_library,
                    color: Colors.green,
                  ),
                  label: const Text(
                    'Photo',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(width: 25),
                TextButton.icon(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.video_call, color: Colors.purpleAccent),
                  label: const Text(
                    'Room',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          // Divider()
        ],
      ),
    );
  }
}
