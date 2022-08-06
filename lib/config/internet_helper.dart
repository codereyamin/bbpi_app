import 'package:flutter/services.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

Future internet() async {
  try {
    bool result = await InternetConnectionChecker().hasConnection;
    if (result == true) {
      return true;
    } else {
      return false;
    }
  } on PlatformException catch (e) {
    return false;
  }
}
