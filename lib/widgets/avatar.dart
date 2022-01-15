import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;

  const Avatar(
      {Key? key, required this.imageUrl, this.width = 40, this.height = 40})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: CircleAvatar(
        backgroundImage: imageUrl.isNotEmpty ? AssetImage(imageUrl) : null,
      ),
    );
  }
}
