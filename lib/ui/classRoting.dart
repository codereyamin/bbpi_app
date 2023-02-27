import 'package:flutter/material.dart';

class ClassRoting extends StatefulWidget {
  ClassRoting({Key? key}) : super(key: key);

  @override
  State<ClassRoting> createState() => _ClassRotingState();
}

class _ClassRotingState extends State<ClassRoting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Class Roting')),
    );
  }
}