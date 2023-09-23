import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../components/button.dart';
import '../text_to_speech.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Stream<QuerySnapshot> documentStream = FirebaseFirestore.instance
      .collection("iStrike").snapshots();

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
              height: 50.0,
              width: 50.0,
            ),
            const SizedBox(width: 10),
            const Text('iStrike',
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
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Button(id:0, name: '落點'),
                SizedBox(width: 10),
                Button(id:1, name: '殘瓶'),
              ],
            ),
            const SizedBox(height: 40),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Button(id:2, name: '助走姿勢'),
                SizedBox(width: 10),
                Button(id:3, name: '手部擺動'),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                StreamBuilder<QuerySnapshot>(
                  stream: documentStream,
                  builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return const Text('Something went wrong');
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Text("Loading");
                    }
                    toSpeech(-1);
                    return Container();
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}