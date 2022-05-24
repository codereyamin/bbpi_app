import 'package:bbpi/drawer/mainScreen.dart';
import 'package:bbpi/drawer/menuScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class CustomDrawer extends StatefulWidget {
  CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {

  Future<bool?>askdilogboxFun(BuildContext context)async => showDialog<bool>(
    context: context, 
    builder: (context)=>AlertDialog(
      title: Text("Do wont to Exit App ?"),
      actions: [
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
            ElevatedButton( child: Text('No'),
        onPressed: ()=>Navigator.pop(context,false),
        ),
         ElevatedButton( child: Text('Yes..'),
        onPressed: ()=>Navigator.pop(context,true),
        )
         ],
       )
      ],
    )
    
    );

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        final askdilogbox= await askdilogboxFun(context);
        return askdilogbox ??false;
      },

      child: SafeArea(
        child: ZoomDrawer(
          mainScreen: MainPage(),
          menuScreen: const MenuScreen(),
          style: DrawerStyle.Style1,
          angle: 0,
          slideWidth: MediaQuery.of(context).size.width*0.6,
          duration: Duration(milliseconds: 500),
          showShadow: true,
          borderRadius: 40,
          backgroundColor: Colors.white54,           
          shadowLayer1Color: Color(2222222),
          
      
        ),
      ),
    );
  }
}



