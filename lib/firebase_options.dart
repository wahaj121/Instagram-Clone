// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDxC9Ne58wsJ5Z-pDpgdp3Oas0CWxrgAH4',
    appId: '1:827100473106:web:5506cf0b6b0759d2e6b5cb',
    messagingSenderId: '827100473106',
    projectId: 'instawahaj',
    authDomain: 'instawahaj.firebaseapp.com',
    storageBucket: 'instawahaj.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD8wdBahQqQgKKvnxHo-4rUgWowQEajUGo',
    appId: '1:827100473106:android:e6abec18ee1d1c70e6b5cb',
    messagingSenderId: '827100473106',
    projectId: 'instawahaj',
    storageBucket: 'instawahaj.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDEhybod5omQLvUgh8XdamdfuJVe1cQP1M',
    appId: '1:827100473106:ios:58603bb620e90ad2e6b5cb',
    messagingSenderId: '827100473106',
    projectId: 'instawahaj',
    storageBucket: 'instawahaj.appspot.com',
    iosBundleId: 'com.example.instaclone',
  );
}
