import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text(
              'Ask Me Anything',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
          ),
          backgroundColor: Colors.indigo,
        ),
        body: Eightball(),
      ),
    ),
  );
}

class Eightball extends StatefulWidget {
  @override
  _EightballState createState() => _EightballState();
}

class _EightballState extends State<Eightball> {
  int ballnumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: (){
            setState((){
                ballnumber=Random().nextInt(4)+1;
            }
            );
          },
          child: Image.asset('images/ball$ballnumber.png'),
        ),
      ),
    );
  }
}
