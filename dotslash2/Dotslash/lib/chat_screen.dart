import 'package:flutter/material.dart';
import 'package:jobs2/Profile.dart';
import 'constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


final _firestore = Firestore.instance;
FirebaseUser loggedInUser;

class Question extends StatefulWidget {
  static const String id = 'question';
  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  final stringController = TextEditingController();
  final _auth = FirebaseAuth.instance;

  String  location ;
  String name;
  String  age;
  String job;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }
  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser();
      if (user != null) {
        loggedInUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                _auth.signOut();
                Navigator.pop(context);
              }),
        ],
        title: Text('Profile '),
        backgroundColor: Colors.purple,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
                  Expanded(

                  child:TextField(
                    onChanged: (value) {
                      name = value;
                    },
                    decoration:
                    kTextFieldDecoration.copyWith(hintText: 'Enter your name'),

                  ),
                  ),

                  SizedBox(
                    height: 8.0,
                  ),
                  Expanded(
                  child:TextField(
                    //controller:stringController,
                    onChanged: (value) {
                      age = value;
                    },
                    decoration:
                    kTextFieldDecoration.copyWith(hintText: 'Enter your age'),

                  ),
                  ),

                  SizedBox(
                    height: 8.0,
                  ),
                  Expanded(
                  child:TextField(
                    onChanged: (value) {
                      location = value;
                    },
                    decoration:
                    kTextFieldDecoration.copyWith(hintText: 'Enter your location'),

                  ),
                  ),

                  SizedBox(
                    height: 8.0,
                  ),
            Expanded(

              child:TextField(
                onChanged: (value) {
                  job = value;
                },
                decoration:
                kTextFieldDecoration.copyWith(hintText: 'Enter your occupation'),

              ),
            ),

            SizedBox(
              height: 8.0,
            ),


                  FlatButton(
                    onPressed: () {
                      _firestore.collection('profile').add({
                        'name': name,
                        'age': age,
                        'location':location,
                        'job':job,
                      });
                      if (loggedInUser != null){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoadDataFromFirestore()));}
                    },
                    child: Text(
                      'Send',
                      style: kSendButtonTextStyle,

                    ),
                  ),
                ],
              ),
            ),

        );

  }
}
