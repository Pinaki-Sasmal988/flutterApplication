import 'package:flutter/material.dart';
import 'HomePage.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String val="pinaki";
    return MaterialApp(
      home: HomePage(),
      );
    
  }
}
