import 'package:bbpi/page/newsFeed/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsFeed extends StatelessWidget {
  const NewsFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () => Get.to(() => const NewsView()),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Material(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.article_rounded,
                          size: 40,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sample Title News feed ",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  overflow: TextOverflow.ellipsis),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Sample Subtitle News feed Text",
                                style: TextStyle(
                                    color: Colors.black26,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    overflow: TextOverflow.ellipsis)),
                          ],
                        )),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios_rounded))
                      ],
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
