import 'package:bbpi/screen/onBoardingPage.dart';
import 'package:bbpi/screen/splashscreen.dart';
import 'package:bbpi/teacher/cmtlist.dart';
import 'package:bbpi/teacher/view.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool show = true;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('ON_BOAEDING') ?? true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'bbpi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          SafeArea(child: show ? const OnBoardingPage() : const Splashscreen()),
      routes: {
        CmtListviwe.rooteNeme: (context) => CmtListviwe(),
        TeacherDetailScring.rooteNeme: (context) => TeacherDetailScring(),
      },
    );
  }
}
