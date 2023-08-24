// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDP0X22rwdporVXpoSrmIW6TueFAa_8vW0',
    appId: '1:545558375070:web:13f844199c6a2d2cace98f',
    messagingSenderId: '545558375070',
    projectId: 'istrike-14c44',
    authDomain: 'istrike-14c44.firebaseapp.com',
    databaseURL: 'https://istrike-14c44-default-rtdb.firebaseio.com',
    storageBucket: 'istrike-14c44.appspot.com',
    measurementId: 'G-PYSJTJP3P3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCV1GUrhn1sqnlCgP1KCtN7quiNOrPLBuI',
    appId: '1:545558375070:android:81176f9f8925643eace98f',
    messagingSenderId: '545558375070',
    projectId: 'istrike-14c44',
    databaseURL: 'https://istrike-14c44-default-rtdb.firebaseio.com',
    storageBucket: 'istrike-14c44.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBzy0dhDsr6sKPrjspCkfXEPSJP5Sht_rM',
    appId: '1:545558375070:ios:8fedda56a27c0ae8ace98f',
    messagingSenderId: '545558375070',
    projectId: 'istrike-14c44',
    databaseURL: 'https://istrike-14c44-default-rtdb.firebaseio.com',
    storageBucket: 'istrike-14c44.appspot.com',
    iosClientId: '545558375070-d034hibmc4prgos2s78g6h3lvqk1i21e.apps.googleusercontent.com',
    iosBundleId: 'com.example.testProjectFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBzy0dhDsr6sKPrjspCkfXEPSJP5Sht_rM',
    appId: '1:545558375070:ios:8776b28e59e98fe7ace98f',
    messagingSenderId: '545558375070',
    projectId: 'istrike-14c44',
    databaseURL: 'https://istrike-14c44-default-rtdb.firebaseio.com',
    storageBucket: 'istrike-14c44.appspot.com',
    iosClientId: '545558375070-i93t2qm7jjr2u35n8882i5031ruk0h6m.apps.googleusercontent.com',
    iosBundleId: 'com.example.testProjectFlutter.RunnerTests',
  );
}
