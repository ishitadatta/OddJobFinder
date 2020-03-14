import 'package:flutter/material.dart';
import 'package:jobs2/application1.dart';
import 'application1.dart';
//my imports

import 'cart_jobs.dart';
class ApplyCart extends StatefulWidget {
  @override
  _ApplyCartState createState() => _ApplyCartState();
}

class _ApplyCartState extends State<ApplyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text('Hired Cart'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),

        ],
      ),

      body: Cart_jobsApply(),

      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: MaterialButton(onPressed: (){},
                child: Text("Check out", style: TextStyle(color: Colors.white),),
                color: Colors.purple,),
            )
          ],
        ),
      ),
    );
  }
}