import 'package:flutter/material.dart';

class Palette {
  static Color backgroundColor = const Color(0xFFF0F2F5);
  static Color facebookblue = const Color(0xFF1777F2);
  static LinearGradient createRoomGradient =
      const LinearGradient(colors: [Colors.purpleAccent, Colors.purple]);

  static Color online = const Color(0xFF4BCB1F);
  static LinearGradient storyGradient = const LinearGradient(
      colors: [Colors.transparent, Colors.black26],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter);
}
