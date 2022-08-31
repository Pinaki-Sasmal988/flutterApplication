import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl='assets/images/profile.jpeg';
    //taking for network
    //final imageUrl="url";
    return Drawer(
       child: ListView(
        //if we want change color drawer then we wrap listview with container and set color;
        children: [
          DrawerHeader(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
          child:UserAccountsDrawerHeader(
            //decoration: BoxDecoration(color: Colors.deepPurpleAccent),
            margin: EdgeInsets.zero,
            accountName: Text("Pinaki Sasmal"),
            accountEmail: Text("pinaki@gmail.com"),
            currentAccountPicture:CircleAvatar(
              //backgroundImage:NetworkImage(url);
              backgroundImage:AssetImage(imageUrl), ) ,
          ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.3,
              style: TextStyle(color:Colors.black)),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.3,
              style: TextStyle(color:Colors.black)),
            ),
        ],),
    );
  }
}