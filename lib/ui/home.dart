import 'package:bbpi/page/aboutBbpi.dart';
import 'package:bbpi/page/department.dart';
import 'package:bbpi/page/feedbackAndratting.dart';
import 'package:bbpi/page/teacher.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../config/internet_helper.dart';
import '../page/book_list/book_list.dart';
import '../page/class_routing/class_routing.dart';
import '../page/collage_result/collage_result.dart';
import '../page/newsFeed/news_feed.dart';

const String url = 'https://www.bbpi.gov.bd';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isDrawrOpen = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
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
                        onTab: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NewsFeed()));
                        }),
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
                                builder: (context) => const Teacher()));
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
                                builder: (context) => const CollageResult()));
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
                              builder: (context) => const ClassRouting()));
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
                                builder: (context) => const Department()));
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
                              builder: (context) => const AboutBbpi()));
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
                                builder: (context) => const BookList()));
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
                              builder: (context) =>
                                  const FeedbackAndRatting()));
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
                      onTab: () async {
                        if (await internet()) {
                          _launchURL();
                        } else {
                          const snakbar = SnackBar(
                              content: Text('Please conect to internet'));
                          ScaffoldMessenger.of(context).showSnackBar(snakbar);
                        }
                      },
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 15,
                ),
              ],
            )
          ],
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
      padding: const EdgeInsets.all(5.0),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 180.0,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 4,
              offset: const Offset(0, 2), // changes position of shadow
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
            style: const TextStyle(
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
      margin: const EdgeInsets.symmetric(horizontal: 24),
      color: Colors.grey,
      child: Image.asset(
        urlImage,
        fit: BoxFit.cover,
      ),
    );
void _launchURL() async {
  if (!await launchUrl(
    Uri.parse(url),
    mode: LaunchMode.externalNonBrowserApplication,
  )) throw 'Could not launch $url';
}
