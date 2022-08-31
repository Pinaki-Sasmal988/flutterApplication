import 'package:flutter/material.dart';
import 'package:first/widgets/MyDrawer.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        // backgroundColor: Colors.white,
        // iconTheme: IconThemeData(color: Colors.black),
        // elevation: 0.5,
        title: Text("First App Application"),
      ),
        body: Center(
          child:Container (
            child:Text("Welcome  To Flutter App"),
          ) , 
        ),
        drawer: MyDrawer(),
      );
  }
}