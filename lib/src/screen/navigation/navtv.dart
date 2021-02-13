


import 'package:flutter/material.dart';
class NavTV extends StatefulWidget {
  NavTV({this.homeScaffold});
  final GlobalKey<ScaffoldState> homeScaffold;
  @override
  _NavTVState createState() => _NavTVState(homeScaffold: homeScaffold);
}

class _NavTVState extends State<NavTV> {
  _NavTVState({this.homeScaffold});
  final GlobalKey<ScaffoldState> homeScaffold;
  bool showPassword = false;
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
            SizedBox(height: 50,),

            Container(
              child: Text("If you are a trainer, Please type in your password.",style: TextStyle(fontSize: 20),),
            ),
            SizedBox(height: 20,),
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
            Container(
              child: FlatButton(
                color: Colors.indigo,
                child: Text("Get access",style: TextStyle(color: Colors.white),),
                onPressed: ()
                {

                },
              ),
            ),
          ],
        ),
      ),



    );
  }
}
