import 'package:flutter/material.dart';
import 'package:text2networkcalls_29may2021/screens/homepage.dart';
import 'package:text2networkcalls_29may2021/screens/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Flutter Demo',
     
      home: HomePage(),
    );
  }
}

