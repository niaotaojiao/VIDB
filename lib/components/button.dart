import 'package:flutter/material.dart';

import '../text_to_speech.dart';

class Button extends StatelessWidget {
  final int id;
  final String name;

  const Button({super.key, required this.id, required this.name});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:  ElevatedButton(
        onPressed: () {
          toSpeech(id);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          side: const BorderSide(
            color: Colors.black,
            width: 4,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 40),
            imgPick(id),
            const SizedBox(height: 5),
            Text(
              name,
              style: const TextStyle(
                fontSize: 35.0,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      )
    );
  }
}


Widget imgPick(int id) {
  double size=150;
  switch(id){
    case 0:
      return Image.asset('assets/img/bowling.png',
        height: size, width: size,);
    case 1:
      return Image.asset('assets/img/strike.png',
        height: size, width: size,);
    case 2:
      return Image.asset('assets/img/person.png',
        height: size, width: size,);
    case 3:
      return Image.asset('assets/img/glove.png',
        height: size, width: size,);
    default: {
      return Image.asset('assets/img/play.png',
        height: size, width: size,);
    }
  }
}


