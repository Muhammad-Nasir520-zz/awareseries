


import 'package:flutter/material.dart';

class NavPortals extends StatefulWidget {
  NavPortals({this.homeScaffold});
  final GlobalKey<ScaffoldState> homeScaffold;
  @override
  _NavPortalsState createState() => _NavPortalsState(homeScaffold: homeScaffold);
}

class _NavPortalsState extends State<NavPortals> {
  _NavPortalsState({this.homeScaffold});
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

      body:Center(
        child: Text("Next Phase"),
      ),

    );
  }
}
