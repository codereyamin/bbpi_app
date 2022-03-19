import 'package:flutter/material.dart';

class ContactDevloper extends StatefulWidget {
  ContactDevloper({Key? key}) : super(key: key);

  @override
  State<ContactDevloper> createState() => _ContactDevloperState();
}

class _ContactDevloperState extends State<ContactDevloper> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBar(title: Text('Devloper'),),
      body: SingleChildScrollView(
        child:Column(
          children: [
            Container(
              child: Image.asset('assets\me.jpg'),
            )
          ],
          ) ),
      ),
    );
  }
}