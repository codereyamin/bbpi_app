import 'package:flutter/material.dart';

class NewsPeed extends StatefulWidget {
  NewsPeed({Key? key}) : super(key: key);

  @override
  State<NewsPeed> createState() => _NewsPeedState();
}

class _NewsPeedState extends State<NewsPeed> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('News Peed')),
    );
  }
}