import 'package:flutter/material.dart';

class ColageResult extends StatefulWidget {
  ColageResult({Key? key}) : super(key: key);

  @override
  State<ColageResult> createState() => _ColageResultState();
}

class _ColageResultState extends State<ColageResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Collage Result')),
    );
  }
}