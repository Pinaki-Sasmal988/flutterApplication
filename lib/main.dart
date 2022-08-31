import 'package:first/utils/routes.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_catalog/pages/LoginPage.dart';
import 'utils/routes.dart';
import 'pages/HomePage.dart';
import 'pages/LoginPage.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String val="pinaki";
    return MaterialApp(
     // home: HomePage(),
      //themeMode:ThemeMode.light ,
      theme: ThemeData(
       // primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color:Colors.black),
          titleTextStyle: TextStyle(color: Colors.black), 
        ),
        
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/":(context)=> LoginPage(),
        MyRoutes.loginRoute:(context)=>LoginPage(),
        MyRoutes.homeRoute:(context)=>HomePage(),
      },
      );
    
  }
}
