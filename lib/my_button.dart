import 'package:flutter/material.dart';
import 'text_to_speech.dart';

class MyButton extends StatelessWidget {
  final int id;
  final String name;

  MyButton({super.key, required this.id, required this.name});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        toSpeech(id);
      },
      style: ElevatedButton.styleFrom(
          //backgroundColor: const Color.fromARGB(255, 251, 133, 0),
          backgroundColor: Colors.white,
          side: const BorderSide(
              color: Colors.black,
              width: 2
          ),
          minimumSize: const Size(180, 180),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
      ),
      child: Column(
        children: [
          imgPick(id),
          Text(
            name,
            style: const TextStyle(
              fontSize: 30.0,
              color: Colors.black
            ),
          ),
        ],
      ),
    );
  }
}


Widget imgPick(int id) {
  double size=100;
  switch(id){
    case 0:
      return Image.asset('assets/img/bowling.png',height: size,
        width: size,);
    case 1:
      return Image.asset('assets/img/strike.png',height: size,
        width: size,);
    case 2:
      return Image.asset('assets/img/person.png',height: size,
        width: size,);
    case 3:
      return Image.asset('assets/img/glove.png',height: size,
        width: size,);
    default: {
      return Image.asset('assets/img/play.png',height: size,
        width: size,);
    }
  }
}


