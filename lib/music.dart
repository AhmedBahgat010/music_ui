import 'package:flutter/material.dart';
import 'dart:math';
class Music extends StatefulWidget {
  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  var image=2;
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Image.asset("images/$image.jpg")),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.repeat),
              Icon(Icons.skip_previous),
              FlatButton(
                onPressed: () { setState(() {
                  image=Random().nextInt(3)+1;
                });

                },
                child: Icon(
                  Icons.play_circle_fill,
                  size: 70,
                  color: Colors.red,
                ),
              ),
              Icon(Icons.skip_next),
              Icon(Icons.shuffle),
            ],
          ),
          
        ],
      ),


    );
  }
}
//Omar AZ, [١٥.٠٤.٢١ ٢١:٤٧]
//الاولي من الشمال اسمها repeat
//اللي بعدها previous
//اللي بعدها play
//Next
//Shuffle
