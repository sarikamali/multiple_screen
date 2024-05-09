import 'package:flutter/material.dart';
import 'package:flutter_simple/screens/drawer/favorites.dart';
import 'package:flutter_simple/screens/drawer/navbar.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const NavBar(),
      appBar: AppBar(
        title: const Text('SideBar'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: const FavoritesScreen(),
    );
  }
}
