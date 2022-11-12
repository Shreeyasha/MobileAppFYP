import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:foodapp/scr/screens/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:foodapp/scr/screens/login.dart';
import 'package:splashscreen/splashscreen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
 Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: LoginScreen(),
      
    );
  }
}



