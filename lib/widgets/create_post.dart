import 'package:facebook/models/models.dart';
import 'package:facebook/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CreatePost extends StatelessWidget {
  final String imageUrl;
  final Color? color;
  final double avatarLeftMargin;
  final List<Widget>? bidgets;
  final double bidgetHorizontalMargin;
  final double bidgetVerticalMargin;
  const CreatePost({
    Key? key,
    this.color,
    this.avatarLeftMargin = 10,
    required this.imageUrl,
    this.bidgets,
    this.bidgetHorizontalMargin = 30,
    this.bidgetVerticalMargin = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: avatarLeftMargin),
                child: Avatar(
                  imageUrl: imageUrl,
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
            margin: EdgeInsets.symmetric(
                horizontal: bidgetHorizontalMargin,
                vertical: bidgetVerticalMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: bidgets!,
            ),
          ),
        ],
      ),
    );
  }
}
