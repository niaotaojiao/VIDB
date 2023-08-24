import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_tts/flutter_tts.dart';

late List<String> dropPoint;
late List<String> remaining;
late List<String> pose;
late List<String> hand;

final db = FirebaseFirestore.instance.collection("iStrike");

Future<Map<String, dynamic>> firebaseGetData({required String documentID}) async {
  DocumentSnapshot ds = await db.doc(documentID).get();
  Map<String, dynamic> data = ds.data() as Map<String, dynamic>;
  dropPoint = List<String>.from(data["落點"]);
  remaining = List<String>.from(data["殘瓶"]);
  pose = List<String>.from(data["姿勢"]);
  hand = List<String>.from(data["手部"]);
  print(data);
  return data;
}

String setRemaining(text){
  if (text.isEmpty) {
    return '全倒';
  }
  if (text.length ==10) {
    return '洗溝';
  }
  String allText='剩餘球瓶';
  for(var tx in text) {
    allText+='$tx號,';
  }
  return allText;
}

// String setPose(judge){
//   if (judge == 'ture') {
//     return '直';
//   }else {
//     return '不直';
//   }
// }


Future<void> toSpeech(id) async {
  final FlutterTts tts = FlutterTts();
  tts.setLanguage('zh');
  tts.setSpeechRate(0.7);

  await firebaseGetData(documentID: 'test2');

  List<String> keyword = [
    '球落於位置${dropPoint[0]}，往${dropPoint[1]}點鐘方向',
    (setRemaining(remaining)),
    '目前走了${pose[0]}步，每步距離${pose[1]}公分',
    '手擺速${hand[0]}公尺每秒，手轉動角度${hand[1]}度'
  ];

  if (id == 4) {
    String allText = '';
    for (var tt in keyword) {
      allText += tt;
    }
    tts.speak(allText);
  } else {
    tts.speak(keyword[id]);
  }
}
