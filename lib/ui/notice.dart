import 'package:flutter/material.dart';

class Notice extends StatefulWidget {
  const Notice({Key? key}) : super(key: key);

  @override
  State<Notice> createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(10.0),
          child: Material(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10),
              animationDuration: Duration(milliseconds: 500),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.notifications,
                      color: Colors.lightBlue,
                      size: 35,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Text(
                        "Amet fugiat consequat culpa veniam ea proident aute est.",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    )
                  ],
                ),
              )),
        ),
      )),
    );
  }
}
