// ignore_for_file: non_constant_identifier_names, deprecated_member_use

import 'dart:convert';
import 'package:bbpi/model/teacher_list.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TeacherDetailScring extends StatefulWidget {
  const TeacherDetailScring({Key? key}) : super(key: key);
  static const String rooteName = '/teacherListDetails';

  @override
  State<TeacherDetailScring> createState() => _TeacherDetailScringState();
}

class _TeacherDetailScringState extends State<TeacherDetailScring> {
  var teacherName = "";
  var teacherEducation = "";
  var teacherPosition = "";
  var teachernumber = "";
  var teacherMail = "";
  var teacherImg = "";
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
      teacherEducation = teacherList!.education;
      teacherPosition = teacherList!.position;
      teachernumber = teacherList!.mobile.toString();
      teacherMail = teacherList!.email.toString();
      teacherImg = teacherList!.image;
    });
    super.didChangeDependencies();
  }

  String url_mail = "mailto:{teacherMail}.com?subject=BBPI&body=BBPI%20plugin";
  String url_phone = "tel:urlNumber";

  void grtUrlLauncher(
    String urlString,
  ) async {
    if (await canLaunch(urlString)) {
      await launch(
        urlString,
      );
    } else {
      throw 'Could not Launch $urlString';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(teacherName)),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: SizedBox(width: 250, height: 250, child: Image.asset(teacherImg)),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(teacherName,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                teacherPosition,
                style: const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                teacherEducation,
                style: const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () => grtUrlLauncher(url_phone),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  child: Text(
                    teachernumber,
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                  ),
                )),
          ],
        ),
      )),
    );
  }
}
