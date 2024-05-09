import 'package:flutter/material.dart';
import 'package:flutter_simple/screens/botton_pages/explorer.dart';
import 'package:flutter_simple/screens/botton_pages/home.dart';
import 'package:flutter_simple/screens/botton_pages/profile.dart';
import 'package:flutter_simple/screens/botton_pages/setting.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int myCurrentIndex = 0;
  List pages = [
    const Home(),
    const Setting(),
    const Explore(),
    const Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: myCurrentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'setting'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'explore'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        ],
        // onTap: (index) {
        //   setState(() {
        //     myCurrentIndex;
        //   });
        // },
      ),
      body: pages[myCurrentIndex],
    );
  }
}
