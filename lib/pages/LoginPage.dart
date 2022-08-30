import 'package:flutter/material.dart';
import 'package:first/utils/routes.dart';

class LoginPage extends StatefulWidget {
  //const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formkey = GlobalKey<FormState>();
  
  moveToHome(BuildContext context) async {
    if( _formkey.currentState!.validate()){
    setState(() {
      changeButton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changeButton = false;
    });
  }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
              height: 200,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 40.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter User Name",
                      labelText: "User Name",
                    ),
                    validator: (String? value) {
                      if (value != null && value.isEmpty) {
                        return "Password can't be empty";
                      }

                      return null;
                    },
                    onChanged: (value) {
                      name = value;
                      setState(() {});
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
                    validator: (String? value) {
                      if (value != null && value.isEmpty) {
                        return "Password can't be empty";
                      }else if(value!.length <6){
                        return "Atleast 8 char";
                      }

                      return null;
                    },
                  ),
                  
                  SizedBox(
                    height: 10.0,
                  ),

                  InkWell(
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 40,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(Icons.done, color: Colors.white)
                          : Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
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
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
