import 'package:flutter_tts/flutter_tts.dart';

List<String> testText = [
  '這是第一個按鈕所發出的聲音',
  '這是第二個按鈕所發出的聲音',
  '三三三三三三三三三三三三三',
  '四十四隻石獅子'];

// List<String>Text = [
//   '球落於位置{}，往{}點鐘方向',
//   '剩餘球瓶[]號瓶，手{true or false}',
//   '目前走了{}步，每步距離{}公分',
//   '手擺速{}公尺每秒，手轉動角度{}度'];


void toSpeech(id) {
  final FlutterTts tts = FlutterTts();
  tts.setLanguage('zh');
  tts.setSpeechRate(0.8);
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