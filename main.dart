import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';

void main() {
  runApp(lamp());
}

class lamp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return myLamp();
  }
}

class myLamp extends StatefulWidget {
  @override
  _myLampState createState() => _myLampState();
}

class _myLampState extends State<myLamp> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor:
              switchValue ? Colors.yellowAccent[400] : Colors.grey[900],
          body: Column(
            children: <Widget>[
              Container(
                color: switchValue ? Colors.grey[500] : Colors.white54,
                height: 300,
                width: 2,
              ),
              Container(
                child: Center(
                  child: Opacity(
                    opacity: 0.9,
                    child: Transform.rotate(
                      angle: pi / 2,
                      child: CupertinoSwitch(
                          trackColor: Colors.grey[700],
                          activeColor: Colors.grey[100],
                          value: switchValue,
                          onChanged: (value) {
                            setState(() {
                              switchValue = value;
                            });
                          }),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 4.0),
                child: Text(
                  'Bedroom',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 28,
                    color: switchValue ? Colors.grey[500] : Colors.white54,
                  ),
                ),
              ),
              Text(
                '18 C',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14,
                  color: switchValue ? Colors.grey[500] : Colors.white54,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
