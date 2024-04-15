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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyCchAajm_RTPq5-VvsxVxY-L0Iw93Mflf0',
    appId: '1:791293451735:web:bb690b0e2c25e4cbc6ff92',
    messagingSenderId: '791293451735',
    projectId: 'chat-app-12ad1',
    authDomain: 'chat-app-12ad1.firebaseapp.com',
    storageBucket: 'chat-app-12ad1.appspot.com',
    measurementId: 'G-NHQ3CBHNR4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBfbkq6JWWGJhdLuls2K-XE0zUuaH6hx5o',
    appId: '1:791293451735:android:64950aa689fc88a3c6ff92',
    messagingSenderId: '791293451735',
    projectId: 'chat-app-12ad1',
    storageBucket: 'chat-app-12ad1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBOekEy4vEbkOUwC-lveubSMzeOa780YOM',
    appId: '1:791293451735:ios:849721f085cc7495c6ff92',
    messagingSenderId: '791293451735',
    projectId: 'chat-app-12ad1',
    storageBucket: 'chat-app-12ad1.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBOekEy4vEbkOUwC-lveubSMzeOa780YOM',
    appId: '1:791293451735:ios:849721f085cc7495c6ff92',
    messagingSenderId: '791293451735',
    projectId: 'chat-app-12ad1',
    storageBucket: 'chat-app-12ad1.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCchAajm_RTPq5-VvsxVxY-L0Iw93Mflf0',
    appId: '1:791293451735:web:9a113d772ba3b1e9c6ff92',
    messagingSenderId: '791293451735',
    projectId: 'chat-app-12ad1',
    authDomain: 'chat-app-12ad1.firebaseapp.com',
    storageBucket: 'chat-app-12ad1.appspot.com',
    measurementId: 'G-EVCMNKXF28',
  );
}
