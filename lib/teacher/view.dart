import 'dart:convert';
import 'package:bbpi/model/teacher_list.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TeacherDetailScring extends StatefulWidget {
  const TeacherDetailScring({Key? key}) : super(key: key);
  static const String rooteNeme = '/teacherListDeatil';

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

  final String lat = "teachernumber";
  final String lng = "-122.0312";

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
              child: Container(
                  width: 250, height: 250, child: Image.asset(teacherImg)),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(teacherName,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                teacherPosition,
                style: TextStyle(
                    color: Colors.blueGrey, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                teacherEducation,
                style: TextStyle(
                    color: Colors.blueGrey, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () async {
                    final googleMapsUrl = teachernumber.toString();
                    final appleMapsUrl = teachernumber.toString();
                    if (await canLaunch(googleMapsUrl)) {
                      await launch(googleMapsUrl);
                    }
                    if (await canLaunch(appleMapsUrl)) {
                      await launch(appleMapsUrl, forceSafariVC: false);
                    } else {
                      throw "Couldn't launch URL";
                    }
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  child: Text(
                    teacherMail,
                    style: TextStyle(
                        color: Colors.blueGrey,
                        backgroundColor: Colors.white,
                        fontSize: 18),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () => grtUrlLauncher(url_phone),
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  child: Text(
                    teachernumber,
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                )),
          ],
        ),
      )),
    );
  }
}
