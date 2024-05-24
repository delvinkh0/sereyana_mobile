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
    apiKey: 'AIzaSyA-YfKCAfaLYCeZkfp7ewFfhkIC8OiT6WU',
    appId: '1:74484122541:web:ffae2cae51aaf0d6661724',
    messagingSenderId: '74484122541',
    projectId: 'uas-mobile-delvin',
    authDomain: 'uas-mobile-delvin.firebaseapp.com',
    storageBucket: 'uas-mobile-delvin.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAECLhswnmWEIsovlsiPtUikwsZCwc3mzE',
    appId: '1:74484122541:android:69083a9bd273ba88661724',
    messagingSenderId: '74484122541',
    projectId: 'uas-mobile-delvin',
    storageBucket: 'uas-mobile-delvin.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA1sFngvTIYmTUPFrf2cJoBTvCU8yK7-oE',
    appId: '1:74484122541:ios:870b1594ca077661661724',
    messagingSenderId: '74484122541',
    projectId: 'uas-mobile-delvin',
    storageBucket: 'uas-mobile-delvin.appspot.com',
    iosBundleId: 'com.example.serenaya2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA1sFngvTIYmTUPFrf2cJoBTvCU8yK7-oE',
    appId: '1:74484122541:ios:870b1594ca077661661724',
    messagingSenderId: '74484122541',
    projectId: 'uas-mobile-delvin',
    storageBucket: 'uas-mobile-delvin.appspot.com',
    iosBundleId: 'com.example.serenaya2',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA-YfKCAfaLYCeZkfp7ewFfhkIC8OiT6WU',
    appId: '1:74484122541:web:7e1dbd84888935a0661724',
    messagingSenderId: '74484122541',
    projectId: 'uas-mobile-delvin',
    authDomain: 'uas-mobile-delvin.firebaseapp.com',
    storageBucket: 'uas-mobile-delvin.appspot.com',
  );

}