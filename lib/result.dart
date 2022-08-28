import 'package:birthdygame/welcome.dart';
import 'package:flutter/material.dart';
import 'gamepage.dart';

class result extends StatelessWidget {
  const result({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/Balloon.jpg'),
          ),
        ),
        child: AlertDialog(
                backgroundColor: Colors.white70,
                title: Text("Yahoo!!! We have find out your Birthday date"),
                content: Text(
                  'Your Birthday Date is ${Mygame.day}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => welcome()),
                  );
                },
                child: Text('End'),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff274bb0),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
              ),
            ]));
  }
}
