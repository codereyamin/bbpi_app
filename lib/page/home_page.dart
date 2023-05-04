// ignore_for_file: non_constant_identifier_names

import 'package:bbpi/page/profile.dart/profile.dart';
import 'package:flutter/material.dart';

import '../ui/app_drawer.dart';
import '../ui/main_home_page.dart';
import '../ui/search.dart';
import 'notis.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final Screen = [
    Stack(
      children: const [DrawerScreen(), HomeScreen()],
    ),
    const Notis(),
    const Search(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 20,
          unselectedFontSize: 16,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          iconSize: 30,
          showUnselectedLabels: true,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Home', backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'Notice', backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: 'Search', backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'Profile', backgroundColor: Colors.blue),
          ]),
    );
  }
}
