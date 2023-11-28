import 'package:flutter/material.dart';
import 'dart:math';

class Page1Body extends StatefulWidget {
  const Page1Body({Key? key}) : super(key: key);

  @override
  State<Page1Body> createState() => _Page1BodyState();
}
class _Page1BodyState extends State<Page1Body> {
  @override
  int _counter = 0;
  int _counter2 =0;
  var _colorBack= 0xFFB74093;

  void _randomFunction(){
    setState(() {
      _counter =Random().nextInt(100000);
    });
  }
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _resetCounter() {
    setState(() {

      _counter =0;
    });
  }
  Color _colorRandom() {
    return Color(Random().nextInt(0xffffffff)).withAlpha(0xff);
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
    });}
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Stack(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left: 31),
              child:
              Align(
                alignment: Alignment.bottomLeft,
                child: FloatingActionButton(
                  onPressed: _decrementCounter,
                  child: Icon(Icons.exposure_neg_1),),
              ),),

            Align(
              alignment: Alignment.bottomCenter,
              child: FloatingActionButton(
                onPressed: _resetCounter,
                child: Text('Pas ici'),),
            ),

            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: _incrementCounter,
                child: Icon(Icons.exposure_plus_1),),
            ),
          ],

        )
    );
  }
}
