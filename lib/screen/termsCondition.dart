
import 'package:flutter/material.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({Key? key}) : super(key: key);

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:  Scaffold(appBar: AppBar(title: Text('Terms And Conditions')),
    body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('1. Applications and Related Materials',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
    
    
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('2. Registration',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
    
    
              Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('3. Code of Conduct',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
    
    
              Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('4. Submissions and Postings',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
    
    
              Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('5. Links',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
    
              Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('6. Claims of Copyright Infringement',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
    
              Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('7. Ownership and Restrictions on Use',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
    
    
              Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('8. Jurisdictional Issues',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
    
              Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('9. Termination',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
    
    
              Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('10. Disclaimers',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
    
              Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('11. Limitation of Liability',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
    
              Padding(
                
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text("12. Claims of Copyright Infringement",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('12. Claims of Copyright Infringement',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
    
          ],
        ),
    ),
    ));
  }
}