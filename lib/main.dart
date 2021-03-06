import 'package:facebook/navpage.dart';
import 'package:facebook/pages/pages.dart';
import 'package:facebook/palette.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Palette.backgroundColor,
        primarySwatch: Colors.blue,
      ),
      home: const NavPage(),
    );
  }
}


// 08078197140