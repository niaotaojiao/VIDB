# VIDB視障保齡球

視障保齡球 Visual-impaired disabilities bowling (**VIDB**)，一個提供視障者友善介面，此專案使用Flutter框架開發的行動裝置平台。

## Installation
要在本地端運行，請按照以下步驟操作:

1. Make sure you have [Flutter SDK](https://docs.flutter.dev/get-started/install) installed.
2. Clone this repository: `https://github.com/niaotaojiao/VIDB.git`.
3. Change directory to the app folder: `cd VIDB`.
4. Run `flutter pub get` to install dependencies.
5. Connect your mobile device or emulator.
6. Run `flutter run` to start the app.

## Speaking rate
如果你覺得語速太快或太慢，在`text_to_speech.dart`更改以下程式碼數值:
```cpp=13
tts.setSpeechRate(0.4);
```

## 🧾To-Do List
- [ ] 1. Create database (Firebase)
- [ ] 2. Read data
- [ ] 3. APP design