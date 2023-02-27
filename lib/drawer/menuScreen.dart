// ignore_for_file: file_names

import 'dart:io';

import 'package:bbpi/page/aboutBbpi.dart';
import 'package:bbpi/page/contactDevloper.dart';
import 'package:bbpi/page/feedbackAndratting.dart';
import 'package:bbpi/ui/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../page/newsFeed/news_feed.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  bool isDrawrOpen = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(176, 146, 174, 185),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/about.png'),
                    maxRadius: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          'Tuhin Ikbal Eyamin',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text('Student'),
                        SizedBox(
                          height: 2,
                        ),
                        Text('CST')
                      ],
                    ),
                  ),
                ]),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        leading: Image.asset(
                          'assets/online-registration.png',
                          height: 30,
                          width: 30,
                        ),
                        title: const Text(
                          'News Feed',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        iconColor: Colors.white54,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NewsFeed()));
                          ZoomDrawer.of(context)!.close();
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
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        iconColor: Colors.white54,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PProfile()));
                          ZoomDrawer.of(context)!.close();
                        },
                      ),
                      ListTile(
                        leading: Image.asset(
                          'assets/about.png',
                          height: 30,
                          width: 30,
                        ),
                        title: const Text(
                          'About BBPI',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        iconColor: Colors.white54,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AboutBbpi()));
                          ZoomDrawer.of(context)!.close();
                        },
                      ),
                      ListTile(
                        leading: Image.asset(
                          'assets/contact-info.png',
                          height: 30,
                          width: 30,
                        ),
                        title: const Text(
                          'Contact Devloper',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        iconColor: Colors.white54,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ContactDevloper()));
                          ZoomDrawer.of(context)!.close();
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
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        iconColor: Colors.white54,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const FeedbackAndRatting()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.star,
                            size: 40, color: Colors.white),
                        title: const Text(
                          'Ratting us',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        iconColor: Colors.white54,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const FeedbackAndRatting()));
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: ListTile(
                          leading: const Icon(Icons.logout, size: 40),
                          title: const Text(
                            'Exit',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          iconColor: Colors.white54,
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text("Alert!!"),
                                  content: const Text("You are Exit...."),
                                  actions: <Widget>[
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: ElevatedButton(
                                              onPressed: () {
                                                if (Platform.isIOS) {
                                                  try {
                                                    exit(0);
                                                  } catch (e) {
                                                    SystemNavigator
                                                        .pop(); // for IOS, not true this, you can make comment this :)
                                                  }
                                                } else {
                                                  try {
                                                    SystemNavigator
                                                        .pop(); // sometimes it cant exit app
                                                  } catch (e) {
                                                    exit(
                                                        0); // so i am giving crash to app ... sad :(
                                                  }
                                                }
                                              },
                                              child: const Text(
                                                'Yes..',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text(
                                                'No..',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 22),
                                              )),
                                        ),
                                      ],
                                    )
                                  ],
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
