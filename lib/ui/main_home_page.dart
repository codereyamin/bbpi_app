import 'package:flutter/material.dart';

import '../page/aboutBbpi.dart';
import '../page/book_list/book_list.dart';
import '../page/department.dart';
import '../page/teacher.dart';
import 'bloodCollection.dart';
import 'classRoting.dart';
import 'collageResult.dart';
import 'newsPeed.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xoffset = 0;
  double yoffset = 0;

  bool isDrawrOpen = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnimatedContainer(
        transform: Matrix4.translationValues(xoffset, yoffset, 0)
          ..scale(isDrawrOpen ? 0.90 : 1.00)
          ..rotateZ(isDrawrOpen ? -50 : 0),
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: isDrawrOpen
              ? BorderRadius.circular(40)
              : BorderRadius.circular(0),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    isDrawrOpen
                        ? InkWell(
                            child: const Icon(
                              Icons.arrow_back,
                              size: 45,
                            ),
                            onTap: () {
                              setState(() {
                                xoffset = 0;
                                yoffset = 0;
                                isDrawrOpen = false;
                              });
                            },
                          )
                        : InkWell(
                            child: const Icon(
                              Icons.menu,
                              size: 38,
                            ),
                            onTap: () {
                              setState(() {
                                xoffset = 250;
                                yoffset = 130;
                                isDrawrOpen = true;
                              });
                            },
                          ),
                    const Text(
                      'BBPI',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          decoration: TextDecoration.none),
                    ),
                    Container()
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Row(children: [
                    Expanded(
                      child: _customButton(
                        context: context,
                        color: Colors.white,
                        name: 'News Feed',
                        img: 'assets/online-registration.png',
                        onTab: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewsPeed())),
                      ),
                    ),
                    Expanded(
                        child: _customButton(
                      context: context,
                      color: Colors.white,
                      name: 'Teacher',
                      img: 'assets/classroom.png',
                      onTab: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Teacher()));
                        });
                      },
                    ))
                  ]),
                  Row(children: [
                    Expanded(
                      child: _customButton(
                        context: context,
                        color: Colors.white,
                        name: 'Collage Result',
                        img: 'assets/information.png',
                        onTab: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ColageResult()));
                        },
                      ),
                    ),
                    Expanded(
                        child: _customButton(
                      context: context,
                      color: Colors.white,
                      name: 'Class Routing',
                      img: 'assets/checklist.png',
                      onTab: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ClassRoting()));
                      },
                    ))
                  ]),
                  Row(children: [
                    Expanded(
                      child: _customButton(
                        context: context,
                        color: Colors.white,
                        name: 'Department',
                        img: 'assets/department.png',
                        onTab: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Department()));
                        },
                      ),
                    ),
                    Expanded(
                        child: _customButton(
                      context: context,
                      color: Colors.white,
                      name: 'About BBPI',
                      img: 'assets/direct.png',
                      onTab: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AboutBbpi()));
                      },
                    ))
                  ]),
                  Row(children: [
                    Expanded(
                      child: _customButton(
                        context: context,
                        color: Colors.white,
                        name: 'Book List',
                        img: 'assets/open-book.png',
                        onTab: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BookList()));
                        },
                      ),
                    ),
                    Expanded(
                        child: _customButton(
                      context: context,
                      color: Colors.white,
                      name: 'Blood Collection',
                      img: 'assets/hospital.png',
                      onTab: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BloodCollection()));
                      },
                    ))
                  ]),
                  Row(children: [
                    Expanded(
                      child: _customButton(
                        context: context,
                        color: Colors.white,
                        name: 'Web Site',
                        img: 'assets/world-wide-web.png',
                        onTab: () {},
                      ),
                    ),
                  ]),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _customButton({
  BuildContext? context,
  @required Color? color,
  @required String? name,
  @required String? img,
  // @required IconData? iconData,
  @required VoidCallback? onTab,
}) {
  return GestureDetector(
    onTap: onTab,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 180.0,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 4,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Image.asset(
              '$img',
              fit: BoxFit.cover,
              width: 70,
              height: 70,
            ),
          ),
          Text(
            '$name',
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent),
          ),
        ],
      ),
    ),
  );
}

Widget buildImage(String urlImage, int index) => Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      color: Colors.grey,
      child: Image.asset(
        '${urlImage}',
        fit: BoxFit.cover,
      ),
    );
