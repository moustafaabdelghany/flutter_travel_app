import 'package:flutter/material.dart';
import 'package:flutter_app/screens/Home_Screen.dart';
import 'package:flutter_app/screens/selected_place_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: HomeScreen(),
    );
  }
}
