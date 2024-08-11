import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/HomePage.dart';
import '/SplashPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'Screens/otp.dart';
import 'Screens/MoNoVerifyScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp  (
        routes: {
          'phone': (context) => MyPhone(),
          'verify': (context) => MyOtp(),
          'home': (context) => MyHomePage(title: 'HomePage',)
        },
      theme: ThemeData(
         primarySwatch: Colors.orange
      ),
        debugShowCheckedModeBanner: false,
      home: const SplashPage()
    );
  }
}
