

import 'package:awareseries/src/authentication/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        // decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //         stops: [0.3, 5.0],
        //         begin: Alignment.topCenter,
        //         end: Alignment.bottomCenter,
        //         colors: [Colors.indigoAccent, Colors.indigo])),
        child: Container(
          margin: EdgeInsets.only(left: 20,right: 20),
          child: ListView(
            children: [

              SizedBox(height: 20,),
              Container(
                child:Image.asset("assets/aware.png") ,
              ),

              SizedBox(height: 30,),

              Container(
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo, width: 2.0),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    hintText: "Name",
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo, width: 2.0),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    hintText: "Email",
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.text,
                  obscureText: !this.showPassword,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo, width: 2.0),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    hintText: "Password",
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: !this.showPassword? Colors.grey : Colors.indigo,
                      ),
                      onPressed: () {
                        setState(() => this.showPassword = !this.showPassword);
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              // Login button
              SizedBox(
                width: 300,
                height: 40.0,
                child: MaterialButton(
                  onPressed: () {
                  },
                  color: Colors.indigo,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 16.0, color: Colors.white, fontFamily: 'Lato'),
                  ),
                ),
              ),

              SizedBox(height: 5,),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => LoginPage()),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.black,),
                      ),
                    ),
                  ],
                ),
              ),




            ],
          ),
        ),
      ),
    );
  }
}
