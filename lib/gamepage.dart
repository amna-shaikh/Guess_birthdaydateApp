import 'dart:io';
import 'package:birthdygame/result.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Mygame extends StatefulWidget {
  static int day = 0;

  @override
  State<Mygame> createState() => _MygameState();
}

class _MygameState extends State<Mygame> {
  String set1 = "1 3 5 7 \n 9 11 13 15 \n 17 19 21 23 \n 25 27 29 31";

  String set2 = "2 3 6 7 \n 10 11 14 15 \n 18 19 22 23 \n 26 27 30 31";

  String set3 = "4 5 6 7 \n 12 13 14 15 \n 20 21 22 23 \n 28 29 30 31";

  String set4 = "8 9 10 11 \n 12 13 14 15 \n 24 25 26 27 \n 28 29 30 31";

  String set5 = "16 17 18 19 \n 20 21 22 23 \n 24 25 26 27 \n 28 29 30 31";

  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AlertDialog(
      title: Text("Do you want to start the game"),
      content: ElevatedButton(
        onPressed: () {
          _showMyDialog(set1);
        },
        child: Text('Start '),
        style: ElevatedButton.styleFrom(
            primary: Color(0xff274bb0),
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
    ));
  }

  _showMyDialog(String setnumber) {
    return showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Does your date exist in the box'),
          content: Text(setnumber, style: TextStyle(fontSize: 20)),
          actions: <Widget>[
            ElevatedButton(
              child: const Text('No'),
              onPressed: () {
                if (counter == 1) {
                  counter++;
                  _showanotherMyDialog(set2);
                } else if (counter == 3) {
                  counter++;
                  _showanotherMyDialog(set4);
                } else if (counter == 5) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => result()),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                  primary: Color(0xff274bb0),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  textStyle:
                      TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            ),
            ElevatedButton(
              child: const Text('Yes'),
              onPressed: () {
                if (counter == 1) {
                  Mygame.day += 1;
                  counter++;
                  _showanotherMyDialog(set2);
                } else if (counter == 3) {
                  Mygame.day += 4;
                  counter++;
                  _showanotherMyDialog(set4);
                } else if (counter == 5) {
                  Mygame.day += 16;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => result()),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                  primary: Color(0xff274bb0),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  textStyle:
                      TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            ),
          ],
        );
      },
    );
  }

  _showanotherMyDialog(String sets) {
    return showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Does your date exist in the box'),
          content: Text(sets, style: TextStyle(fontSize: 20)),
          actions: <Widget>[
            ElevatedButton(
              child: const Text('No'),
              onPressed: () {
                if (counter == 2) {
                  counter++;
                  _showMyDialog(set3);
                } else if (counter == 4) {
                  counter++;
                  _showMyDialog(set5);
                }
              },
              style: ElevatedButton.styleFrom(
                  primary: Color(0xff274bb0),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  textStyle:
                      TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            ),
            ElevatedButton(
              child: const Text('Yes'),
              onPressed: () {
                if (counter == 2) {
                  Mygame.day += 2;
                  counter++;
                  _showMyDialog(set3);
                } else if (counter == 4) {
                  Mygame.day += 8;
                  counter++;
                  _showMyDialog(set5);
                }
              },
              style: ElevatedButton.styleFrom(
                  primary: Color(0xff274bb0),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  textStyle:
                      TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            ),
          ],
        );
      },
    );
  }
}
