import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zenly/firebase_options.dart';
import 'package:zenly/pages/Login.dart';
import 'package:zenly/pages/Login2.dart';
import 'package:zenly/pages/Login3.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: Login());
  }
}
