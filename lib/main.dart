import 'package:flutter/material.dart';
import 'test.dart';
import 'dashboard.dart';
import 'play_screen.dart';
import 'one.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  play_screen(),
    );
  }
}