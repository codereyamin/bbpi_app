// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AboutBbpi extends StatefulWidget {
  const AboutBbpi({Key? key}) : super(key: key);

  @override
  State<AboutBbpi> createState() => _AboutBbpiState();
}

class _AboutBbpiState extends State<AboutBbpi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About BBPI')),
    );
  }
}
