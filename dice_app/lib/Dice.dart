import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';

class Dice extends StatefulWidget {

  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {

  int leftDice = 1;
  int rightDice = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text('Dice game'),
          backgroundColor: Colors.red,
          elevation: 0.0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Row(
                  children: [
                    Expanded(child: Image.asset('image/dice$leftDice.png')),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(child: Image.asset('image/dice$rightDice.png'))
                  ],
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              ButtonTheme(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      leftDice = Random().nextInt(6) + 1;
                      rightDice = Random().nextInt(6) + 1;
                    });
                    showToast("Left dice: $leftDice, Right dice: $rightDice");
                  },
                  child: Icon(
                    Icons.play_arrow,
                    size: 40.0,
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.orangeAccent,
                      minimumSize: Size(100.0, 60.0)),
                ),
              )
            ],
          ),
        ));
  }
}

void showToast(String message){
  Fluttertoast.showToast(msg: message,
  backgroundColor: Colors.white,
  textColor: Colors.black,
  toastLength: Toast.LENGTH_SHORT,
  gravity: ToastGravity.BOTTOM);
}