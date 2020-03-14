import 'package:flutter/material.dart';
import 'homepage.dart';
import 'chat_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'round_button.dart';

class inter extends StatefulWidget {
  static const String id = 'inter';

  @override
  _interState createState() => _interState();
}

class _interState extends State<inter>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.purple)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  text: ['Purple'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              title: 'Apply For Job',
              colour: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pushNamed(context, Question.id);
              },
            ),
            RoundedButton(
              title: 'Hire a Service',
              colour: Colors.blueAccent,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}