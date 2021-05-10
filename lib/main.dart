import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          centerTitle: true,
          backgroundColor: Colors.blue.shade900,
        ),
       body: MagicPage(),
      )
    ),
  );
}
class MagicPage extends StatefulWidget {
  @override
  _MagicPageState createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int ballNumber=4;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child:FlatButton(
              onPressed: (){
                setState(() {
                  ballNumber=Random().nextInt(5)+1;
                });
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
        ),
      ],
    );
  }
}
