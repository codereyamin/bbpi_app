import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowDilog {
  static showCustomDilog(
      {required String msgType,
      required bool isbasic,
      required String msg,
      required BuildContext context}) async {
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: isbasic
            ? const Color.fromARGB(255, 241, 227, 227)
            : const Color.fromARGB(255, 236, 134, 134),
        title: Text(msgType),
        content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(msg)]),
        actions: [
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("ok"))
        ],
      ),
    );
  }
}
