import 'package:bbpi_app/page/home_page.dart';
import 'package:bbpi_app/page/on_board_page.dart';
import 'package:bbpi_app/routs/app_routs.dart';
import 'package:bbpi_app/ui/splashscreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

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
     initialRoute:App_routs.init_routs,
     routes: App_routs.routes,
    );
  }
}







// class MyHomePage extends StatefulWidget {
//   const MyHomePage({ Key? key }) : super(key: key);

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
// bool condi =true;
// class _MyHomePageState extends State<MyHomePage> {
//   static bool agry_continu =false;

//   @override
//   Widget build(BuildContext context) {
  
   
//     return Scaffold(
//       body:agry_continu== false ? OnBoardingPage() : HomePage(),      
     
//     );
//   }
// }

// //condition class

// class _conditionValue{
// static bool agry_continu =false;
// _conditionValue conditionValueObj =new _conditionValue();

// }
