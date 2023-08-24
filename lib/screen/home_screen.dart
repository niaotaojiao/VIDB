import 'package:flutter/material.dart';

import '../components/button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                Button(id:0, name: '落點'),
                const SizedBox(width: 10),
                Button(id:1, name: '殘瓶'),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Button(id:2, name: '助走姿勢'),
                const SizedBox(width: 10),
                Button(id:3, name: '手部擺動'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}