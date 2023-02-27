import 'dart:convert';
import 'package:bbpi/model/teacher_list.dart';
import 'package:bbpi/teacher/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RattListviwe extends StatefulWidget {
  const RattListviwe({Key? key}) : super(key: key);

  static const String rooteNeme = '/teacherList';

  @override
  State<RattListviwe> createState() => _RattListviweState();
}

class _RattListviweState extends State<RattListviwe> {
  List<TeacherList> teacherList = [];

  Future readJsonFile() async {
    final String response =
        await rootBundle.loadString('assets/json/teacherList.json');
    final teacherData = await jsonDecode(response);
    var list = teacherData["rat"] as List<dynamic>;
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
        title: const Text('Refrigeration & Air-Conditioning Technology'),
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
                          Navigator.of(context).pushNamed(
                              TeacherDetailScring.rooteNeme,
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
