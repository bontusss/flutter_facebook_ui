import 'dart:ui';

import 'package:facebook/palette.dart';
import 'package:flutter/material.dart';

class LiveVideos extends StatelessWidget {
  const LiveVideos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'From Live notifcation',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  'See All',
                  style: TextStyle(color: Palette.facebookblue),
                )
              ],
            ),
          ),
          const _ListVideos()
        ],
      ),
    );
  }
}

class _ListVideos extends StatelessWidget {
  const _ListVideos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      color: Colors.blueGrey,
      height: 200,
      child: ListView.builder(itemBuilder: (_, index) {
        return Container();
      }),
    );
  }
}
