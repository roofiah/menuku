import 'package:flutter/material.dart';
import 'package:menuku/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menuku',
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}
