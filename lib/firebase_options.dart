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
    apiKey: 'AIzaSyDnD1ns55P0l-y-894VRsTaim87DlFzsHA',
    appId: '1:11202930120:web:03a97824ccc13622d1ccfd',
    messagingSenderId: '11202930120',
    projectId: 'myappproject-4db4b',
    authDomain: 'myappproject-4db4b.firebaseapp.com',
    storageBucket: 'myappproject-4db4b.appspot.com',
    measurementId: 'G-ZZE0TMMP4S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCSUERl23lu9QJSZ-NlTBfZcd-g0dZt5Us',
    appId: '1:11202930120:android:f97ec301809e7cc9d1ccfd',
    messagingSenderId: '11202930120',
    projectId: 'myappproject-4db4b',
    storageBucket: 'myappproject-4db4b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDaklfc3qAI5j7Ws8k6CQANWK4uapTcoE0',
    appId: '1:11202930120:ios:25c4e15de2787e22d1ccfd',
    messagingSenderId: '11202930120',
    projectId: 'myappproject-4db4b',
    storageBucket: 'myappproject-4db4b.appspot.com',
    iosClientId: '11202930120-t2q4tasjcsfvvml8k8bknfu2ha9lu9fj.apps.googleusercontent.com',
    iosBundleId: 'com.example.myapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDaklfc3qAI5j7Ws8k6CQANWK4uapTcoE0',
    appId: '1:11202930120:ios:b074dfa7fd97953bd1ccfd',
    messagingSenderId: '11202930120',
    projectId: 'myappproject-4db4b',
    storageBucket: 'myappproject-4db4b.appspot.com',
    iosClientId: '11202930120-qplppo3gahc7dh407c4ebirhq3v0rvb8.apps.googleusercontent.com',
    iosBundleId: 'com.example.myapp.RunnerTests',
  );
}
