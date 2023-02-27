// ignore_for_file: file_names

import 'package:bbpi/ui/home.dart';
import 'package:bbpi/ui/notice.dart';
import 'package:bbpi/ui/profile.dart';
import 'package:bbpi/ui/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  // ignore: non_constant_identifier_names
  final Screen = [
    const Home(),
    const Notice(),
    const Search(),
    const PProfile(),
    const Text('Profilegky,togy ')
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 10, 209, 216),
          title: const Text('BBPI'),
          leading: IconButton(
            icon: const Icon(Icons.menu, size: 35),
            onPressed: () {
              setState(() {
                ZoomDrawer.of(context)!.toggle();
              });
            },
          ),
        ),
        body: Screen[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            selectedFontSize: 20,
            enableFeedback: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color.fromARGB(255, 5, 170, 182),
            unselectedFontSize: 16,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
            iconSize: 30,
            showUnselectedLabels: true,
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: 'Notice',
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search',
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  label: 'Profile',
                  backgroundColor: Colors.blue),
            ]),
      ),
    );
  }
}

Widget buildImage(String urlImage, int index) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      color: Colors.grey,
      child: Image.asset(
        urlImage,
        fit: BoxFit.cover,
      ),
    );

















// Column(
//           children: [

//            Row(
//                     children: [
//                       Expanded(child: _customButton(
//                         context: context,
//                         color: Colors.white,
//                         name: 'News Feed',
//                         img: 'assets/online-registration.png',
//                         //onTab: ()=>Navigator.push(context, new MaterialPageRoute(builder: (context) => new NewsPeed())),
//                       ),),
//                       Expanded(child: _customButton(
//                         context: context,
//                         color: Colors.white,
//                         name: 'Teacher',
//                         img: 'assets/classroom.png',
//                         onTab: (){

//                           setState(() {
//                             //Navigator.push(context, new MaterialPageRoute(builder: (context) => new Teacher()));
//                           });
//                         },                       
//                       ))
//                     ]
//                   ),
//           ],
//         ),