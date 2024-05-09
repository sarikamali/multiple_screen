import 'package:flutter/material.dart';
import 'package:flutter_simple/screens/bottom_nav.dart';
import 'package:flutter_simple/screens/drawer/drawer.dart';
import 'package:flutter_simple/screens/slider_images/slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DrawerScreen(),
    );
  }
}
