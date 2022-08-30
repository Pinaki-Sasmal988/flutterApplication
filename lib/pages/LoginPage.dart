import 'package:flutter/material.dart';
import 'package:first/utils/routes.dart';
class LoginPage extends StatefulWidget {
  //const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton=false;
  @override
  Widget build(BuildContext context) {
    return Material(
        // child: Center(
        //   child:Text("Login Page",style: TextStyle(
        //     fontSize: 30,
        //     color: Colors.blue,
        //     fontWeight: FontWeight.bold
        //   ),),
        //    ),
        color: Colors.white,
        child: Column(children: [
          Image.asset("assets/images/login_image.jpg",
          fit: BoxFit.cover,
          ),
           SizedBox(
            height: 20.0,
           ),
          Text("Welcome $name",style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
           ),),
          
          Padding(
            padding:const EdgeInsets.symmetric(vertical: 16.0,horizontal: 40.0),
            child: Column(
            children: [
               TextFormField(
            decoration: InputDecoration(
              hintText: "Enter User Name",
              labelText: "User Name",
             ),
             onChanged: (value){
              name=value;
              setState(() {
                
              });
             },
           ),
            SizedBox(
            height: 10.0,
           ),
           TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter User Password",
              labelText: "Password",
             ),
           ),
           SizedBox(
            height: 10.0,
           ),

           InkWell(
            onTap: () async{
              setState(() {
                changeButton=true;
              });
              await Future.delayed(Duration(seconds: 1));
             Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
            child: AnimatedContainer(
              duration:Duration(seconds:1),
              width: changeButton?50:150,
              height: 40,
              
              alignment: Alignment.center,
              child: changeButton? Icon(Icons.done,color:Colors.white): Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                 
              ),
              decoration:BoxDecoration(
               borderRadius: BorderRadius.circular( changeButton?50:8),
               color: Colors.deepPurple,
              ),
            ),
           ),
          //  ElevatedButton(
          //    child: Text("Login"),
          //    style: TextButton.styleFrom(),
          //    onPressed: (){
          //    // print("Hello pinaki");
          //     Navigator.pushNamed(context, MyRoutes.homeRoute);
          //    },
          //  )
            ],
          ),),
        ]),
        
    );
  }
}