import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:birthdygame/gamepage.dart';

class welcome extends StatelessWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/Balloon.jpg'),
        ),
      ),
      child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 170,
              ),
              Text(
                'Wana Play this game',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, decoration: TextDecoration.none,color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Mygame()),
                  );
                },
                child: Text("Let's Go"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.indigoAccent,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
              )
            ]),
          )    );
  }
}
