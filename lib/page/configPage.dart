import 'package:bbpi_app/page/home_page.dart';
import 'package:bbpi_app/page/on_board_page.dart';
import 'package:flutter/material.dart';

class Config_page extends StatefulWidget {
  const Config_page({ Key? key }) : super(key: key);

  @override
  State<Config_page> createState() => _Config_pageState();
}

class _Config_pageState extends State<Config_page> {
  static bool first_open_page = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:(first_open_page == false) ? OnBoardingPage() : HomePage(),
    );
  }
}