<<<<<<< HEAD
import 'package:bbpi/screen/onBoardingPage.dart';
import 'package:bbpi/screen/splashscreen.dart';
import 'package:bbpi/teacher/cmtlist.dart';
import 'package:bbpi/teacher/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool show = true;
Future<void> main() async {
=======
import 'package:bbpi_app/page/on_board_page.dart';
import 'package:bbpi_app/ui/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
 bool show = true;

void main() async {
>>>>>>> 9d840eb36764cd1f2f50e2dec67bffe580503b5c
  WidgetsFlutterBinding.ensureInitialized();
  var prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('ON_BOAEDING') ?? true;
  runApp(const MyApp());
}

<<<<<<< HEAD
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'bbpi',
      home:
          SafeArea(child: show ? const OnBoardingPage() : const Splashscreen()),
      routes: {
        CmtListviwe.rooteNeme: (context) => const CmtListviwe(),
        TeacherDetailScring.rooteNeme: (context) => const TeacherDetailScring(),
      },
    );
  }
}
=======
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    home:show ? const OnBoardingPage() : const Splashscreen(),
    );
  }
}




>>>>>>> 9d840eb36764cd1f2f50e2dec67bffe580503b5c
