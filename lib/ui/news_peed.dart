import 'package:flutter/material.dart';

class NewsPeed extends StatefulWidget {
  const NewsPeed({Key? key}) : super(key: key);

  @override
  State<NewsPeed> createState() => _NewsPeedState();
}

class _NewsPeedState extends State<NewsPeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('News Peed')),
    );
  }
}
