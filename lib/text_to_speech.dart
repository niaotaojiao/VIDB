import 'package:flutter_tts/flutter_tts.dart';

List<String> testText = [
  '這是第一個按鈕所發出的聲音',
  '這是第二個按鈕所發出的聲音',
  '三三三三三三三三三三三三三',
  '四十四隻石獅子'];


void toSpeech(id) {
  final FlutterTts tts = FlutterTts();
  tts.setLanguage('zh');
  tts.setSpeechRate(0.4);
  if (id == 4) {
    String t='';
    for (var tt in testText){
      t+=tt;
    }
    tts.speak(t);
  } else {
    tts.speak(testText[id]);
  }

}