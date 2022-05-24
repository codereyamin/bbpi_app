import 'package:flutter/material.dart';

class Notice extends StatefulWidget {
  Notice({Key? key}) : super(key: key);

  @override
  State<Notice> createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Notice Notice '),
    );
  }
}