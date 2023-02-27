import 'package:flutter/material.dart';

class BloodCollection extends StatefulWidget {
  BloodCollection({Key? key}) : super(key: key);

  @override
  State<BloodCollection> createState() => _BloodCollectionState();
}

class _BloodCollectionState extends State<BloodCollection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Blood Collection')),
    );
  }
}