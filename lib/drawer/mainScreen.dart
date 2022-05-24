import 'package:bbpi/ui/home.dart';
import 'package:bbpi/ui/notice.dart';
import 'package:bbpi/ui/profile.dart';
import 'package:bbpi/ui/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static bool isDrawrOpen = false;
   int currentIndex=0;
   // ignore: non_constant_identifier_names
   final  Screen =[
    Home(),
    Notice(),
    Search(),
    PProfile(),
    Text('Profilegky,togy ')
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('BBPI'),
          leading: IconButton(icon: Icon(Icons.menu,size: 35),
          onPressed:() {
            setState(() {
              ZoomDrawer.of(context)!.toggle();             
            });
          },
          ),
        ),
        
         body: Screen[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            selectedFontSize: 20,
            unselectedFontSize: 16,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
            iconSize: 30,
            showUnselectedLabels: true,
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index) ,
            items:const [
               BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home', backgroundColor: Colors.blue),
               BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'Notice',backgroundColor: Colors.blue),
               BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search',backgroundColor: Colors.blue),
               BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'Profile',backgroundColor: Colors.blue),
            ]
         
          ),
      ),
    );
  }
}

 Widget _customButton({
    BuildContext? context,
    @required Color? color,
    @required String? name,
    @required String? img,
   // @required IconData? iconData,
    @required VoidCallback? onTab,
  }) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(5.0),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: 180.0,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(5.0),

            boxShadow: [
                 BoxShadow(
                 color: Colors.grey.withOpacity(0.5),
                 spreadRadius: 3,
                 blurRadius: 4,
                 offset: Offset(0, 2), // changes position of shadow
      ),
            ]

            ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Image.asset('$img',fit: BoxFit.cover,width: 70,height: 70,),
            ),
            Text(
              '$name',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold,color: Colors.blueAccent),
            ),
          ],
        ),
        
      ),
    );
  }

Widget buildImage( String urlImage, int index)=> Container(
  margin: EdgeInsets.symmetric(horizontal: 24),
  color: Colors.grey,
  
  child: Image.asset(
    '${urlImage}',
    fit: BoxFit.cover,
  ),
);

















// Column(
//           children: [

//            Row(
//                     children: [
//                       Expanded(child: _customButton(
//                         context: context,
//                         color: Colors.white,
//                         name: 'News Feed',
//                         img: 'assets/online-registration.png',
//                         //onTab: ()=>Navigator.push(context, new MaterialPageRoute(builder: (context) => new NewsPeed())),
//                       ),),
//                       Expanded(child: _customButton(
//                         context: context,
//                         color: Colors.white,
//                         name: 'Teacher',
//                         img: 'assets/classroom.png',
//                         onTab: (){

//                           setState(() {
//                             //Navigator.push(context, new MaterialPageRoute(builder: (context) => new Teacher()));
//                           });
//                         },                       
//                       ))
//                     ]
//                   ),
//           ],
//         ),