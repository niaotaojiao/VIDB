import 'package:flutter/material.dart';
import 'my_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color.fromARGB(255, 2, 48, 71),
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Image.asset(
          'assets/img/bowlingAppbar.png',
          height: 50,
          width: 50,
        ),
        centerTitle: true,
        //backgroundColor: const Color.fromARGB(255, 2, 48, 71),
        backgroundColor: Colors.grey,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MyButton(id:0, name: '落點'),
                const SizedBox(width: 10),
                MyButton(id:1, name: '殘瓶'),
                ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MyButton(id:2, name: '助走姿勢'),
                const SizedBox(width: 10),
                MyButton(id:3, name: '手部擺動'),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MyButton(id:4, name: '逐一撥放'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

