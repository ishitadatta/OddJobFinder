import 'package:flutter/material.dart';
import 'package:jobs2/chat_screen.dart';
import 'homepage.dart';
import 'homepageapply.dart';


class Page extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner=false,
      home:Scaffold(
        backgroundColor: Colors.purple,
        body:SafeArea(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children:<Widget>[
              Text('Would You Like To', 
              style: TextStyle(
                 fontSize: 40.0,
                 fontWeight: FontWeight.bold,
                 color :Colors.white,
                 fontFamily: 'Pacifico',
              ),
              ),
                  Row(
            children: <Widget>[
            //the size button
              Expanded(
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Question()));

                },
                color: Colors.purple[100],
                textColor: Colors.purple,
                elevation: 0.2,
                child: Text("Apply for a job")
                ),
              ),
            ],
          ),


           Row(
            children: <Widget>[
            //the size button
              Expanded(
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));

                },
                color: Colors.purple[100],
                textColor: Colors.purple,
                elevation: 0.2,
                child: Text("Hire a service")
                ),
              ),
            ],
          ),


             ]
          )
        )
      )
    );
  }
}
 