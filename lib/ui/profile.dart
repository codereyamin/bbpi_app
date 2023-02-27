import 'package:flutter/material.dart';

class PProfile extends StatefulWidget {
  const PProfile({Key? key}) : super(key: key);

  @override
  State<PProfile> createState() => _PProfileState();
}

class _PProfileState extends State<PProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Stack(children: [
          SizedBox(
            width: double.infinity,
            height: 5000,
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(color: Colors.blue)),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 5000,
                ),
                Positioned(
                    top: 150,
                    child: Container(
                      width: 300,
                      height: 400,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                    )),
                Positioned(
                  top: 60,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('assets/me.jpg'),
                  ),
                ),
                Positioned(
                    top: 270,
                    child: Column(
                      children: [
                        Text(
                          "Tuhin Ikbal Eyamin",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Email : codereyamin@gmail.com",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Mobile : +01517822052",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {}, child: Text("Update")),
                            SizedBox(
                              width: 100,
                            ),
                            ElevatedButton(
                                onPressed: () {}, child: Text("LogOut"))
                          ],
                        )
                      ],
                    ))
              ],
            ),
          ),
        ]),
      )),
    );
  }
}
