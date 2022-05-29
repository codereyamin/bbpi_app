import 'package:bbpi/teacher/cmtlist.dart';
import 'package:bbpi/teacher/emtlist.dart';
import 'package:flutter/material.dart';

class Teacher extends StatelessWidget {
  const Teacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: _customButton(
                  context: context,
                  color: Colors.white,
                  name: 'Computer Technology',
                  img: 'assets/computer.png',
                  onTab: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => CmtListviwe())));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: _customButton(
                  context: context,
                  color: Colors.white,
                  name: 'Architecture & Interior Design Technology',
                  img: 'assets/architect.png',
                  onTab: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: _customButton(
                  context: context,
                  color: Colors.white,
                  name: 'Electromedial Technology',
                  img: 'assets/medical-research.png',
                  onTab: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => EmtListviwe())));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: _customButton(
                  context: context,
                  color: Colors.white,
                  name: 'Refrigeration & Air-conditioning Technology',
                  img: 'assets/cooling.png',
                  onTab: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: _customButton(
                  context: context,
                  color: Colors.white,
                  name: 'Non-Tech Department',
                  img: 'assets/presentation.png',
                  onTab: () {},
                ),
              ),
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
            textAlign: TextAlign.center,
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
