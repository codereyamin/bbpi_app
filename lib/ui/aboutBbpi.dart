import 'package:flutter/material.dart';

class AboutBbpi extends StatefulWidget {
  AboutBbpi({Key? key}) : super(key: key);

  @override
  State<AboutBbpi> createState() => _AboutBbpiState();
}

class _AboutBbpiState extends State<AboutBbpi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About BBPI')),
    );
  }
}