import 'package:flutter/material.dart';
import 'package:jobs2/welcome.dart';
import 'welcome.dart';


class page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
        });
  }
}
