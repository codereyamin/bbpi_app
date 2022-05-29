import 'dart:convert';
import 'package:bbpi/model/teacher_list.dart';
import 'package:flutter/material.dart';

class TeacherDetailScring extends StatefulWidget {
  const TeacherDetailScring({Key? key}) : super(key: key);
  static const String rooteNeme = '/teacherListDeatil';

  @override
  State<TeacherDetailScring> createState() => _TeacherDetailScringState();
}

class _TeacherDetailScringState extends State<TeacherDetailScring> {
  var teacherName = "";
  TeacherList? teacherList;
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    var teacherSting = ModalRoute.of(context)?.settings.arguments as String;
    var teacherJson = jsonDecode(teacherSting);
    setState(() {
      teacherList = TeacherList.fromJson(teacherJson);
      teacherName = teacherList!.name;
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(teacherName)),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(teacherList!.name),
        ],
      )),
    );
  }
}
