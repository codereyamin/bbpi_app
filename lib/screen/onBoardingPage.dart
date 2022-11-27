// ignore_for_file: non_constant_identifier_names

import 'package:bbpi/drawer/drawer.dart';
import 'package:bbpi/screen/termsCondition.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  bool agry = false;
  bool show_Next_Button = true;
  bool show_Done_Button = false;

  @override
  Widget build(BuildContext context) => SafeArea(
          child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'Brahmanbaria Polytechnic Institute',
            body: 'Welcome to our software',
            image: buildImage('assets/welcome.png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Software Feature',
            body:
                'Institute Information,Booklist,Web,Blood Collection,Notice etc ',
            image: buildImage('assets/feature.png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Help Center',
            body:
                '', //'Staying with classmates,Texting,Making New Classmates And Sharing Information With Them',
            footer: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text('* Staying with classmates',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text('* Texting',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text('* Making New Classmates',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text('* Sharing Information With Them',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            image: buildImage('assets/help.png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
              title: 'User Agreement',
              body: '',
              image: buildImage('assets/information.png'),
              decoration: getCondiPageDecoration(),
              footer: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: agry,
                        onChanged: (val) {
                          setState(() {
                            agry = val!;
                          });
                        },
                        activeColor: Colors.blue,
                      ),
                      const Text('I have read and accept terms and conditions'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Read the terms and conditions'),
                        const SizedBox(
                          height: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const TermsAndCondition()));
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              ' Read  >>',
                              style: TextStyle(
                                color: Colors.black,
                                backgroundColor: Colors.yellowAccent,
                                fontSize: 20,
                                letterSpacing: 5,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ))
        ],
        dotsDecorator: getDecoration(),
        done: (agry == true)
            ? const Text(
                "Let's Go  >",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            : const Text(''),
        onDone: () => ondone(context),
        showNextButton: show_Next_Button,
        next: const Icon(Icons.arrow_forward),
        showSkipButton: true,
        skip: const Text('Skip'),
      ));

  Widget buildImage(String path) => Center(
        child: Image.asset(
          path,
          width: 250,
        ),
      );

  DotsDecorator getDecoration() => DotsDecorator(
        color: Colors.black,
        size: const Size(10, 10),
        activeSize: const Size(22, 12),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle:
            const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: const TextStyle(fontSize: 20),
        bodyPadding: const EdgeInsets.all(18).copyWith(bottom: 0),
        imagePadding: const EdgeInsets.all(24),
        pageColor: Colors.white,
      );

//last page condition

  PageDecoration getCondiPageDecoration() => PageDecoration(
        titleTextStyle:
            const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        titlePadding: const EdgeInsets.all(0),
        bodyTextStyle: const TextStyle(fontSize: 1),
        bodyPadding: const EdgeInsets.all(0).copyWith(bottom: 0),
        imagePadding: const EdgeInsets.all(24),
        pageColor: Colors.white,
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const CustomDrawer()),
      );

  void ondone(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOAEDING', false);
    await Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const CustomDrawer()));
  }
}
