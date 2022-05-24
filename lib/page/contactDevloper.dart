import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactDevloper extends StatefulWidget {
  @override
  State<ContactDevloper> createState() => _ContactDevloperState();
}

class _ContactDevloperState extends State<ContactDevloper> {
  String url_fb = 'https://facebook.com/codereyaminfb';
  String url_linkedin = 'https://linkedin.com/in/codereyamin';
  String url_twitter = 'https://twitter.com/codereyamin';
  String url_instagram = 'https://instagram.com/codereyamin';
  String url_mail =
      'mailto:codereyamin@gmail.com?subject=BBPI&body=BBPI%20plugin';
  String url_phone = 'tel:+8801517822052';
  String url_sms = 'sms:01517822052';

  void grtUrlLauncher(
    String urlString,
  ) async {
    if (await canLaunch(urlString)) {
      await launch(
        urlString,
        // forceWebView: true,
        // forceSafariVC: true,
        // enableJavaScript: true,
        // enableDomStorage: true,
      );
    } else {
      throw 'Could not Launch $urlString';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Devloper'),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              child: Image.asset(
                'assets/me.jpg',
                height: 300,
                width: double.infinity,
              ),
            ),
            Center(
              child: Text(
                'Tuhin Ikbal Eyamin',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'Founder of BBPI Official Application',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Custombutton(
                  icon: Icon(Icons.mail),
                  nameText: Text('Contact To  Email',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  onClick: () => grtUrlLauncher(url_mail),
                ),
                Custombutton(
                  icon: Icon(Icons.phone),
                  nameText: Text('Contact To Phone Number',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  onClick: () => grtUrlLauncher(url_phone),
                ),
                Custombutton(
                  icon: Icon(Icons.sms),
                  nameText: Text('Contact To Sms',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  onClick: () => grtUrlLauncher(url_sms),
                ),
                Custombutton(
                  icon: Icon(Icons.facebook),
                  nameText: Text('Contact To Facebook',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  onClick: () => grtUrlLauncher(url_fb),
                ),
                Custombutton(
                  icon: Image.asset(
                    'assets/linkedin.png',
                    color: Colors.white,
                    width: 24,
                  ),
                  nameText: Text('Contact To LinkendIn',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  onClick: () => grtUrlLauncher(url_linkedin),
                ),
                Custombutton(
                  icon: Image.asset(
                    'assets/twitter.png',
                    color: Colors.white,
                    width: 24,
                  ),
                  nameText: Text('Contact To Twitter',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  onClick: () => grtUrlLauncher(url_twitter),
                ),
                Custombutton(
                  icon: Image.asset(
                    'assets/instagram.png',
                    color: Colors.white,
                    width: 24,
                  ),
                  nameText: Text('Contact To Instagram',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  onClick: () => grtUrlLauncher(url_instagram),
                ),
                Custombutton(
                  icon: Image.asset(
                    'assets/whatsapp.png',
                    color: Colors.white,
                    width: 24,
                  ),
                  nameText: Text('Contact To Whatsapp',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  onClick: () => grtUrlLauncher(url_phone),
                ),
                Custombutton(
                  icon: Icon(Icons.bug_report),
                  nameText: Text('Send Me Bug Info',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  onClick: () => grtUrlLauncher(url_mail),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}

class Custombutton extends StatelessWidget {
  Custombutton(
      {Key? key,
      required this.icon,
      required this.nameText,
      required this.onClick})
      : super(key: key);

  VoidCallback onClick;
  Widget nameText;
  Widget icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(22.0)),
        child: ListTile(
          title: nameText,
          trailing: CircleAvatar(
            child: icon,
          ),
        ),
      ),
    );
  }
}
