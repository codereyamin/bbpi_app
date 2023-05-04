import 'package:flutter/material.dart';

class CollageResult extends StatefulWidget {
  const CollageResult({Key? key}) : super(key: key);

  @override
  State<CollageResult> createState() => _CollageResultState();
}

class _CollageResultState extends State<CollageResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Collage Result')),
    );
  }
}
