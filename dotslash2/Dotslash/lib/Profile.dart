import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import'homepageapply.dart';
import'round_button.dart';
class LoadDataFromFirestore extends StatefulWidget {
  @override
  _LoadDataFromFirestoreState createState() => _LoadDataFromFirestoreState();
}
class _LoadDataFromFirestoreState extends State<LoadDataFromFirestore> {
  @override
  void initState() {
    super.initState();
    getDriversList().then((results) {
      setState(() {
        querySnapshot = results;
      });
    });
  }

  QuerySnapshot querySnapshot;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _showDrivers(),

    );



  }

  //build widget as prefered
  //i'll be using a listview.builder
  Widget _showDrivers() {
    //check if querysnapshot is null
    if (querySnapshot != null) {
      return ListView.builder(
        primary: false,
        itemCount: querySnapshot.documents.length,
        padding: EdgeInsets.all(12),
        itemBuilder: (context,i) {
          return  Column(
            children: <Widget>[
//load data into widgets
              Text("age ${querySnapshot.documents[i].data['age']}"),
              Text("job ${querySnapshot.documents[i].data['job']}"),
              Text("location ${querySnapshot.documents[i].data['location']}"),
              Text("name ${querySnapshot.documents[i].data['name']}"),
          RoundedButton(
          title: ' Next',
          colour: Colors.purple,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomePageApply()));
          }
          ),
            ],
          );

        }
      );
    } else {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
  }

  //get firestore instance
  getDriversList() async {
    return await Firestore.instance.collection('profile').getDocuments();
  }


}