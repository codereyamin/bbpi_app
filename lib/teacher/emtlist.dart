import 'dart:convert';
import 'package:bbpi/model/teacher_list.dart';
import 'package:bbpi/teacher/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmtListviwe extends StatefulWidget {
  const EmtListviwe({Key? key}) : super(key: key);

  static const String rooteNeme = '/teacherList';

  @override
  State<EmtListviwe> createState() => _CmtListviweState();
}

class _CmtListviweState extends State<EmtListviwe> {
  List<TeacherList> teacherList = [];

  Future readJsonFile() async {
    final String response = await rootBundle.loadString('assets/json/teacherList.json');

    final teacherData = await jsonDecode(response);
    var list = teacherData["emt"] as List<dynamic>;
    setState(() {
      teacherList = list.map((e) => TeacherList.fromJson(e)).toList();
    });
  }

  @override
  void initState() {
    super.initState();
    readJsonFile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Electromedical Technology'),
      ),
      body: Column(children: [
        teacherList.isNotEmpty
            ? Expanded(
                child: ListView.builder(
                  itemCount: teacherList.length,
                  itemBuilder: (BuildContext context, index) {
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(teacherList[index].image),
                        ),
                        title: Text(teacherList[index].name),
                        subtitle: Text(teacherList[index].education),
                        onTap: () {
                          Navigator.of(context).pushNamed(TeacherDetailScring.rooteName,
                              arguments: jsonEncode(teacherList[index]));
                        },
                      ),
                    );
                  },
                ),
              )
            : const Text('no file')
      ]),
    );
  }
}
