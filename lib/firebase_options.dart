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
    apiKey: 'AIzaSyDaso3yBofcxQ6vx8eogZ23wSSvtyoDXps',
    appId: '1:170597384667:web:8033ee625f2ea34dc1e7fe',
    messagingSenderId: '170597384667',
    projectId: 'zenly-929f3',
    authDomain: 'zenly-929f3.firebaseapp.com',
    storageBucket: 'zenly-929f3.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAkRNOdEFTuT0IEA-lkBpc744ndIzcrQI0',
    appId: '1:170597384667:android:37929e62fe5ff843c1e7fe',
    messagingSenderId: '170597384667',
    projectId: 'zenly-929f3',
    storageBucket: 'zenly-929f3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBEK6lECjcL7HOkIcJF3eAyN1_R3He2beU',
    appId: '1:170597384667:ios:5ebb6facf7ec2ad0c1e7fe',
    messagingSenderId: '170597384667',
    projectId: 'zenly-929f3',
    storageBucket: 'zenly-929f3.appspot.com',
    iosClientId: '170597384667-he7r8bh602moobor9fn8bev9kq7152gp.apps.googleusercontent.com',
    iosBundleId: 'com.example.zenly',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBEK6lECjcL7HOkIcJF3eAyN1_R3He2beU',
    appId: '1:170597384667:ios:5ebb6facf7ec2ad0c1e7fe',
    messagingSenderId: '170597384667',
    projectId: 'zenly-929f3',
    storageBucket: 'zenly-929f3.appspot.com',
    iosClientId: '170597384667-he7r8bh602moobor9fn8bev9kq7152gp.apps.googleusercontent.com',
    iosBundleId: 'com.example.zenly',
  );
}
