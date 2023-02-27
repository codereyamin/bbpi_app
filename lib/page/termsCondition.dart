
import 'package:flutter/material.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({Key? key}) : super(key: key);

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:  Scaffold(appBar: AppBar(title: Text('title')),
    body: Column(
        children:const [
          Text(' i will add next update')
        ],
      ),
    ));
  }
}