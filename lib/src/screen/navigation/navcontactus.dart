

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class NavContactUs extends StatefulWidget {
  NavContactUs({this.homeScaffold});
  final GlobalKey<ScaffoldState> homeScaffold;
  @override
  _NavContactUsState createState() => _NavContactUsState(homeScaffold: homeScaffold);
}

class _NavContactUsState extends State<NavContactUs> {
  _NavContactUsState({this.homeScaffold});
  final GlobalKey<ScaffoldState> homeScaffold;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          titleSpacing: 0.0,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: InkWell(
            onTap: () {
              homeScaffold.currentState.openDrawer();
            },
            child: Icon(
              Icons.menu,
              color: Colors.indigo,
              size: 30,
            ),
          )),


      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            SizedBox(height: 20,),
            Container(
              child: Text("Contact Us Here.",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 10,),
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
                  hintText: "Subject",
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              child: Text("Your Enquiry",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 10,),
            Container(
              child: TextFormField(
                maxLines: 5,
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
                  hintText: "Enter text here",
                ),
              ),
            ),
            Container(

              child: FlatButton(

                color: Colors.indigo,
                child: Text("Finish",style: TextStyle(color: Colors.white),),
                onPressed: ()
                {

                },
              ),

            ),
            SizedBox(height: 40,),

            Center(child: Text("-OR-")),
            SizedBox(height: 40,),

            SignInButton(
              Buttons.FacebookNew,
              text: "Contact us on Facebook",
              onPressed: () {},
            ),

            SignInButton(
              Buttons.Twitter,

              text: "Contact us on Twitter",
              onPressed: () {},
            ),
            SignInButton(
              Buttons.LinkedIn,
              text: "Contact us on LinkedIn",
              onPressed: () {},
            )
          ],
        ),
      ),




    );
  }
}
