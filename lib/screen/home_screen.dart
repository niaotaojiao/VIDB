import 'package:flutter/material.dart';

import '../components/button.dart';
import '../text_to_speech.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    setup();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 250, 224),
      //backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              'assets/img/bowlingAppbar.png',
              height: 50,
              width: 50,
            ),
            const SizedBox(width: 10),
            const Text('VIDB',
                style: TextStyle(color: Colors.black, fontSize: 40)
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 250, 237, 205),
        //backgroundColor: Colors.grey,
        toolbarHeight: 80,
        //elevation: 0,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Button(id:0, name: '落點'),
                SizedBox(width: 10),
                Button(id:1, name: '殘瓶'),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Button(id:2, name: '助走姿勢'),
                SizedBox(width: 10),
                Button(id:3, name: '手部擺動'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}