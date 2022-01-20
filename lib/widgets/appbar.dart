import 'package:flutter/material.dart';

/// Facebook custom app bar.
class CustomAppBar extends StatelessWidget {
  /// Number of unread messages for on top of the messenger button.
  final int? unreadMessages;

  /// Name of your app. Example Facebook.
  final String appName;

  /// Fontsize for the {appName}. Default is 26.
  final double? fontSize;

  /// The amount of space (in logical pixels) to add between each letter. A negative value can be used to bring the letters closer.
  final double? letterSpacing;

  /// The typeface thickness to use when painting the text (e.g., bold).
  final FontWeight fontWeight;

  /// The color of the appName.
  final Color? color;

  final List<Widget> widgets;
  const CustomAppBar(
      {Key? key,
      this.unreadMessages,
      required this.appName,
      this.fontSize = 26,
      this.letterSpacing,
      this.fontWeight = FontWeight.bold,
      this.color,
      required this.widgets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      floating: true,
      elevation: 0,
      title: Text(
        appName,
        style: TextStyle(
            color: color,
            fontSize: fontSize,
            letterSpacing: letterSpacing,
            fontWeight: fontWeight),
      ),
      actions: [
        Container(
          width: 100,
          margin: const EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: widgets,
          ),
        )
      ],
    );
  }
}
