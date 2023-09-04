import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const BallPage());
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});
  

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber=0;
  void asking(){
    setState(() {
      ballNumber=Random().nextInt(5)+1;
    });
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text("Ask Me Anything"),
        ),
        body: Container(
          child: Center(child: TextButton(onPressed: () {
            asking();
          },child: Image.asset("images/ball$ballNumber.png"))),
        ),
        backgroundColor: Colors.blue,
      ),
    );}}