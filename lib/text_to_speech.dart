import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_tts/flutter_tts.dart';

late List<String> dropPoint;
late List<String> software;
late List<String> hardware;
late List<String> pose;
late List<String> hand;

final db = FirebaseFirestore.instance.collection("iStrike");

Future<Map<String, dynamic>> firebaseGetData({required String documentID}) async {
  DocumentSnapshot ds = await db.doc(documentID).get();
  Map<String, dynamic> data = ds.data() as Map<String, dynamic>;
  dropPoint = List<String>.from(data["落點"]);
  software = List<String>.from(data["軟體殘瓶"]);
  hardware = setHardware(List<String>.from(data["硬體殘瓶"]));
  pose = List<String>.from(data["姿勢"]);
  hand = List<String>.from(data["手部"]);
  print(data);
  return data;
}

Future<void> setup() async {
  final FlutterTts tts = FlutterTts();
  tts.setLanguage('en');
  tts.setSpeechRate(0.6);
  await tts.speak('i Strike is now active"');
}

String setPin(text) {
  if (text.isEmpty) return '全倒';
  if (text.length == 10) return '洗溝';

  String allText = '剩餘球瓶';
  for(var tx in text) {
    allText += '$tx,';
  }
  allText+='號';
  return allText;
}

List<String> setHardware(text) {
  List<String> newText=[];
  for(String pin in text) {
    switch(pin){
      case '0':
        newText.add('1');
        break;
      case '1':
        newText.add('2');
        break;
      case '2':
        newText.add('3');
        break;
      case '3':
        newText.add('4');
        break;
      case '4':
        newText.add('5');
        break;
      case '5':
        newText.add('6');
        break;
      case '6':
        newText.add('7');
        break;
      case '7':
        newText.add('8');
        break;
      case '8':
        newText.add('9');
        break;
      case '9':
        newText.add('10');
        break;
    }
  }
  return newText;
}

Future<void> toSpeech(id) async {
  final FlutterTts tts = FlutterTts();
  tts.setLanguage('zh');
  tts.setSpeechRate(0.7);

  await firebaseGetData(documentID: 'test3');
  List<String> keyword = [
    '球落於位置${dropPoint[0]}，往${dropPoint[1]}點鐘方向',
    setPin(software),
    '目前走了${pose[0]}步，每步距離${pose[1]}公分',
    '手擺速${hand[0]}公尺每秒，手轉動角度${hand[1]}度'
  ];

  switch(id) {
    case 1:
      (software.length >= hardware.length) ? await tts.speak(keyword[id]) : await tts.speak(setPin(hardware));
      break;
    case 2:
      (pose[0] == '300') ? await tts.speak('開發中') : tts.speak(keyword[id]);
      break;
    case 3:
      (hand[0] == '300') ? await tts.speak('開發中') : await tts.speak(keyword[id]);
      break;
    case -1:
      String allText = keyword[0] + keyword[1];
      if (pose[0] != '300' && pose[1] != '300') allText+=keyword[2];
      if (hand[0] != '300' && hand[1] != '300') allText+=keyword[3];
      tts.speak(allText);
      break;
    default:
      await tts.speak(keyword[id]);
      break;
  }
}
