import 'dart:io';

import 'package:bbpi/page/aboutBbpi.dart';
import 'package:bbpi/page/contactDevloper.dart';
import 'package:bbpi/page/feedbackAndratting.dart';
import 'package:bbpi/page/newsfeed.dart';
import 'package:bbpi/ui/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
// MainScreen
class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  bool isDrawrOpen = false;
  @override
  
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(176, 146, 174, 185),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
                Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/about.png'),
                      maxRadius: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Tuhin Ikbal Eyamin',style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 2,),
                          Text('Student'),
                          SizedBox(height: 2,),
                          Text('CST')
                        ],
                      ),
                    ),             
                  ]
                ),
              ),
            
        
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
        
              SizedBox(height: 20,),
        
               ListTile(
                  leading:Image.asset('assets/online-registration.png',height: 30,width: 30,),
                  title:const Text('News Feed',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  iconColor: Colors.white54,
                  onTap: (){
                   Navigator.push(context, new MaterialPageRoute( builder: (context) => new NewsFeed()));
                   ZoomDrawer.of(context)!.close();
                  },
                ),
        
                
                ListTile(
                  leading:Image.asset('assets/profile.png',height: 30,width: 30,),
                  title:const Text('Profile',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  iconColor: Colors.white54,
                 onTap: (){
                   Navigator.push(context, new MaterialPageRoute( builder: (context) => new PProfile()));
                   ZoomDrawer.of(context)!.close();
                  },
                ),
        
                 ListTile(
                  leading:Image.asset('assets/about.png',height: 30,width: 30,),
                  title:const Text('About BBPI',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  iconColor: Colors.white54,
                 onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => new AboutBbpi()));
                    ZoomDrawer.of(context)!.close();
                  },
                ),
        
                 ListTile(
                  leading:Image.asset('assets/contact-info.png',height: 30,width: 30,),
                  title:const Text('Contact Devloper',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  iconColor: Colors.white54,
                 onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => new ContactDevloper()));
                    ZoomDrawer.of(context)!.close();
                  },
                ),
        
                 ListTile(
                  leading:Image.asset('assets/feedback.png',height: 30,width: 30,),
                  title:const Text('Feedback',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  iconColor: Colors.white54,
                 onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => new FeedbackAndRatting()));
                  },
                ),
        
                 ListTile(
                  leading:Icon(Icons.star,size: 40,color: Colors.white),
                  title:const Text('Ratting us',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  iconColor: Colors.white54,
                 onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => new FeedbackAndRatting()));
                  },
                ),       
        
              ],
            ),
        
            
        
        
        
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:30),
                child: ListTile(
                      leading:Icon(Icons.logout,size: 40),
                      title:const Text('Exit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      iconColor: Colors.white54,
                     onTap: (){


showDialog(
  context: context,
  builder: (BuildContext context) {
    return AlertDialog(
      title: new Text("Alert!!"),
      content: new Text("You are Exit...."),
      actions: <Widget>[
      Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
    
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ElevatedButton(onPressed: (){

           if (Platform.isIOS) {
                 try { exit(0); 
                     } catch (e) {
                           SystemNavigator.pop(); // for IOS, not true this, you can make comment this :)
                       }
                         } else {
                             try {
                                SystemNavigator.pop(); // sometimes it cant exit app  
                              } catch (e) {
                              exit(0); // so i am giving crash to app ... sad :(
                             }
                           }

          },
           child: Text('Yes..',style: TextStyle(color: Colors.white,fontSize: 20),)),
        ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(onPressed: (){
               Navigator.of(context).pop();
            },
            child: Text('No..',style: TextStyle(color: Colors.white,fontSize: 22),)),
          ),
                  ],
      )
      ],
    );
  },
);


                      },
                  ),
              ),
            ],
          )
         
        
            ],
          ),
        ),
    
      ),
    );
  }
}




