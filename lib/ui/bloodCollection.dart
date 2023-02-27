// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BloodCollection extends StatefulWidget {
  const BloodCollection({Key? key}) : super(key: key);

  @override
  State<BloodCollection> createState() => _BloodCollectionState();
}

class _BloodCollectionState extends State<BloodCollection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Blood Collection')),
    );
  }
}
