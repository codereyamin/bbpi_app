import 'package:bbpi/ui/news_peed.dart';
import 'package:flutter/material.dart';

import '../page/contact_devloper.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.blueGrey,
          child: Padding(
            padding: const EdgeInsets.only(top: 5, left: 1, bottom: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 15, bottom: 5, top: 5),
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.transparent,
                              // backgroundImage:AssetImage("assets/t.jpg",),
                              foregroundImage: AssetImage(
                                "assets/t.jpg",
                              ),
                            )
                            //  child: ClipRRect(
                            //   borderRadius: BorderRadius.circular(20),
                            //   child:const Image(image: AssetImage('assets/t.jpg'),height: 150,width: 150,),
                            // ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tuhin Ikbal Eyamin",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Student",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "CST",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset(
                        'assets/online-registration.png',
                        height: 30,
                        width: 30,
                      ),
                      title: const Text(
                        'News peed ',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      iconColor: Colors.white54,
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => const NewsPeed()));
                      },
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/profile.png',
                        height: 30,
                        width: 30,
                      ),
                      title: const Text(
                        'Profile',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      iconColor: Colors.white54,
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/about.png',
                        height: 30,
                        width: 30,
                      ),
                      title: const Text(
                        'About BBPI',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      iconColor: Colors.white54,
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/contact-info.png',
                        height: 30,
                        width: 30,
                      ),
                      title: const Text(
                        'contact Devloper',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      iconColor: Colors.white54,
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const ContactDeveloper()));
                      },
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/feedback.png',
                        height: 30,
                        width: 30,
                      ),
                      title: const Text(
                        'Feedback',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      iconColor: Colors.white54,
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/rating.png',
                        height: 30,
                        width: 30,
                      ),
                      title: const Text(
                        'Rating us',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      iconColor: Colors.white54,
                      tileColor: Colors.white,
                      onTap: () {},
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.logout,
                        size: 30,
                        color: Colors.white60,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Log Out', style: TextStyle(color: Colors.white, fontSize: 18)),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                    ),
                    Container(
                      height: 100,
                    ),
                    Container(
                      height: 100,
                    ),
                    Container(
                      height: 100,
                    ),
                    Container(
                      height: 100,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
