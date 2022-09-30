
import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   int izquierdo=1;
   int derecha=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("DiceApp"),
        centerTitle: true,
        elevation: 10.0,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
                child: TextButton (
                    onPressed: (){
                    izquierdo=Random().nextInt(6)+1;
                    setState(() {

                    });
                    },
                    child: Image.asset("assets/images/dice$izquierdo.png")),
            ),
            Expanded(
              flex: 1,
                child: TextButton(
                  onPressed: (){
                    derecha=derecha+1;
                    setState(() {

                    });
                  },
                  child: Image.asset("assets/images/dice$derecha.png"),
                )
            ),
          ],
        ),
      ),
    );
  }
}

