
import 'package:flutter/material.dart';

  import 'package:flutter/material.dart';
class MyTheme{

 static ThemeData lightTheme(BuildContext context)=>ThemeData(
       // primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black), 
        ),
        
      ); 
      static ThemeData darkTheme(BuildContext context)=>ThemeData(
        brightness: Brightness.dark,
      );
}