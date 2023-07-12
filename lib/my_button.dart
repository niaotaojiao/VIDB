import 'package:flutter/material.dart';
import 'text_to_speech.dart';

class MyButton extends StatelessWidget {
  final int id;
  final String name;
  MyButton({super.key,required this.id, required this.name});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:(){
        toSpeech(id);
      },
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(180, 180),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
      ),
      child: Text(
        name,
        style: const TextStyle(
            fontSize: 25.0,
            color: Colors.black
        ),
      ),
    );
  }
}
