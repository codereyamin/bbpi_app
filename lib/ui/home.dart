
import 'package:bbpi/page/aboutBbpi.dart';
import 'package:bbpi/page/department.dart';
import 'package:bbpi/page/feedbackAndratting.dart';
import 'package:bbpi/page/teacher.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
 const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isDrawrOpen = false;
  String url_web ='http://www.bbpi.gov.bd/';

   void grtUrlLauncher(String urlString)async{
    if(!await canLaunch(urlString)){
      !await launch(urlString);
    }else{
      throw 'Could not Launch $urlString';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: SingleChildScrollView(
        child: Column(
          children:<Widget> [           
          const SizedBox(height: 15,),
            Column(
            
              children: [
                Row(
                  children: [
                    Expanded(child: _customButton(
                      context: context,
                      color: Colors.white,
                      name: 'News Feed',
                      img: 'assets/online-registration.png',
                      onTab: (){
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => new FeedbackAndRatting()));
                      }
                    ),),
                    Expanded(child: _customButton(
                      context: context,
                      color: Colors.white,
                      name: 'Teacher',
                      img: 'assets/classroom.png',
                      onTab: (){

                        setState(() {
                          Navigator.push(context, new MaterialPageRoute(builder: (context) => new Teacher()));
                        });
                      },                       
                    ))
                  ]
                ),
    
    
                 Row(
                  children: [
                    Expanded(child: _customButton(
                      context: context,
                      color: Colors.white,
                      name: 'Collage Result',
                      img: 'assets/information.png',
                      onTab: (){
                       Navigator.push(context, new MaterialPageRoute(builder: (context) => new FeedbackAndRatting()));
                      },
                    ),),
                    Expanded(child: _customButton(
                      context: context,
                      color: Colors.white,
                      name: 'Class Routing',
                      img: 'assets/checklist.png',
                      onTab: (){
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => new FeedbackAndRatting()));
                      },
                    ))
                  ]
                ),
    




                 Row(
                  children: [
                    Expanded(child: _customButton(
                      context: context,
                      color: Colors.white,
                      name: 'Department',
                      img: 'assets/department.png',
                      onTab: (){
                       Navigator.push(context, new MaterialPageRoute(builder: (context) => new Department()));
                      },
                    ),),
                    Expanded(child: _customButton(
                      context: context,
                      color: Colors.white,
                      name: 'About BBPI',
                      img: 'assets/direct.png',
                      onTab: (){
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => new AboutBbpi()));
                      },
                    ))
                  ]
                ),    
    



    
                 Row(
                  children: [
                    Expanded(child: _customButton(
                      context: context,
                      color: Colors.white,
                      name: 'Book List',
                      img: 'assets/open-book.png',
                      onTab: (){
                       Navigator.push(context, new MaterialPageRoute(builder: (context) => new FeedbackAndRatting()));
                      },
                    ),),
                    Expanded(child: _customButton(
                      context: context,
                      color: Colors.white,
                      name: 'Blood Collection',
                      img: 'assets/hospital.png',
                      onTab: (){
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => new FeedbackAndRatting()));
                      },
                    ))
                  ]
                ),
    


                 Row(
                  children: [
                    Expanded(child: _customButton(
                      context: context,
                      color: Colors.white,
                      name: 'Web Site',
                      img: 'assets/world-wide-web.png',
                      onTab: (){
                         grtUrlLauncher(url_web);
                      },
                    ),),
                   
                  ]
                ),

                const SizedBox(height: 15,),
    
    
    
    
                
              ],
            )
          ],
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
