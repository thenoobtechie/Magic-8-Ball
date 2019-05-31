import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(home: MainPage()),
    );

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        backgroundColor: Colors.blue[800],
      ),
      body: AskMeAnything(),
      backgroundColor: Colors.blue,
    );
  }
}

class AskMeAnything extends StatefulWidget {
  @override
  _AskMeAnythingState createState() => _AskMeAnythingState();
}

class _AskMeAnythingState extends State<AskMeAnything> {
  int imgNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset("images/ball$imgNumber.png"),
        onPressed: () {
          setState(() {
            imgNumber = Random().nextInt(5) + 1;
          });
        },
      ),
    );
  }
}
