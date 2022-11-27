import 'dart:async';
import 'dart:ui';
import 'package:bbpi/drawer/drawer.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const CustomDrawer())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.maxFinite,
        child: Stack(
          fit: StackFit.expand,
          children: [
            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 1.5),
              child: Image.asset(
                'assets/bbpi.jpg',
                fit: BoxFit.contain,
              ),
            ),
            SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'WelCome To',
                      style: TextStyle(
                          fontSize: 44.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 55, 99)),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Brahmanbaria',
                      style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 55, 99)),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Polytechnic Institue',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 55, 99)),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    CircularProgressIndicator(
                      color: Color.fromARGB(255, 250, 69, 56),
                      strokeWidth: 8.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
