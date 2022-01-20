import 'package:facebook/models/models.dart';
import 'package:facebook/palette.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;
  final bool hasStory;
  final bool isViewed;
  final bool hasOnline;

  const Avatar(
      {Key? key,
      required this.imageUrl,
      this.width = 40,
      this.height = 40,
      this.hasStory = false,
      this.isViewed = false,
      this.hasOnline = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (hasStory == true) {
      return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: isViewed == false
              ? Border.all(color: Palette.facebookblue, width: 2)
              : Border.all(color: Colors.white, width: 0),
        ),
        child: Stack(
          children: [
            CircleAvatar(
              backgroundImage:
                  imageUrl.isNotEmpty ? AssetImage(imageUrl) : null,
            ),
          ],
        ),
      );
    }
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          CircleAvatar(
            backgroundImage: imageUrl.isNotEmpty ? AssetImage(imageUrl) : null,
          ),
          hasOnline == true
              ? Positioned(
                  right: 2,
                  bottom: 0,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Palette.online, shape: BoxShape.circle),
                  ),
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
