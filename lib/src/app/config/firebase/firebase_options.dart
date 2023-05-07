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
    apiKey: 'AIzaSyBExCc7OEx3ffQO6L-TGWKGU_FYLXXEZ1s',
    appId: '1:625385837276:web:f049e804a9b2a5a4525a19',
    messagingSenderId: '625385837276',
    projectId: 'benchmark-a5adb',
    authDomain: 'benchmark-a5adb.firebaseapp.com',
    storageBucket: 'benchmark-a5adb.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDmqJdyZ2PVlob6nYok0rWR15APuLjFhT0',
    appId: '1:625385837276:android:8eeb0957a2b284f2525a19',
    messagingSenderId: '625385837276',
    projectId: 'benchmark-a5adb',
    storageBucket: 'benchmark-a5adb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAVy5ggOkl2oMZPnvFS_SFLEMo-8pmk7AM',
    appId: '1:625385837276:ios:c5b81fc2b9399647525a19',
    messagingSenderId: '625385837276',
    projectId: 'benchmark-a5adb',
    storageBucket: 'benchmark-a5adb.appspot.com',
    iosClientId: '625385837276-k9260ip2qm02ippdq17p4gog11iqe2r6.apps.googleusercontent.com',
    iosBundleId: 'com.example.benchmark',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAVy5ggOkl2oMZPnvFS_SFLEMo-8pmk7AM',
    appId: '1:625385837276:ios:c5b81fc2b9399647525a19',
    messagingSenderId: '625385837276',
    projectId: 'benchmark-a5adb',
    storageBucket: 'benchmark-a5adb.appspot.com',
    iosClientId: '625385837276-k9260ip2qm02ippdq17p4gog11iqe2r6.apps.googleusercontent.com',
    iosBundleId: 'com.example.benchmark',
  );
}
