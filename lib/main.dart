import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftdicenum = 1;
  var rightdicenum = 2;
  var sum = 1 + 2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 100,
          width: double.infinity,
        ),
        Text(
          'Total Dice Value Rolled:$sum',
          style: TextStyle(fontSize: 20.0, color: Colors.teal),
        ),
        SizedBox(
          height: 40,
          width: double.infinity,
        ),
        Row(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
          Expanded(
              flex: 2,
              child: FlatButton(
                  splashColor: Colors.teal,
                  padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                  onPressed: () {
                    func1();
                  },
                  child: Image(
                    image: AssetImage(
                      'images/dice$leftdicenum.png',
                    ),
                  ))),
          Expanded(
              flex: 2,
              child: FlatButton(
                  splashColor: Colors.teal,
                  padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                  onPressed: () {
                    func1();
                  },
                  child: Image.asset('images/dice$rightdicenum.png'))),
        ]),
        SizedBox(
          height: 150,
          width: double.infinity,
        ),
        Text(
          ' Tap Me!',
          style: TextStyle(fontSize: 20.0, color: Colors.teal),
        ),
        SizedBox(
          height: 10,
          width: double.infinity,
        ),
        FloatingActionButton(
          onPressed: () {
            func1();
          },
          backgroundColor: Colors.teal,
          child: Icon(Icons.arrow_drop_down_circle),
        ),
      ],
    );
  }

//Common setState() Function defined here=>
  void func1() {
    setState(() {
      leftdicenum = Random().nextInt(6) + 1;
      rightdicenum = Random().nextInt(6) + 1;
      sum = leftdicenum + rightdicenum;
    });
  }
}

// The SizedBoxes are simply for alignmnet. You can use spaceEvenly alignment as an alternative.
