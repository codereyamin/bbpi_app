import 'package:flutter/material.dart';

class Notis extends StatefulWidget {
  Notis({Key? key}) : super(key: key);

  @override
  State<Notis> createState() => _NotisState();
}

class _NotisState extends State<Notis> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      appBar: AppBar(title: Text('Notis'),),
    ));
  }
}