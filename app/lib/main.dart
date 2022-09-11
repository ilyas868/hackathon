import 'package:app/screens/profile.dart';
import 'package:app/screens/splash_screen.dart';
import 'package:app/screens/user_profile.dart';
import 'package:app/screens/video_scren.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      
      
     home: HomePage(),
    );
  }
}