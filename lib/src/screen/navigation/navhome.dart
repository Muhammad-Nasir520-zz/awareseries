import 'package:awareseries/src/screen/addtocart/carthome.dart';
import 'package:awareseries/src/screen/bottomnavigation/bottom_mycoursepage.dart';
import 'package:awareseries/src/screen/bottomnavigation/bottom_homepage.dart';
import 'package:awareseries/src/screen/bottomnavigation/bottom_notificationpage.dart';
import 'package:awareseries/src/screen/bottomnavigation/bottom_profilepage.dart';
import 'package:flutter/material.dart';

class NavHome extends StatefulWidget {
  NavHome({this.homeScaffold});

  final GlobalKey<ScaffoldState> homeScaffold;

  @override
  _NavHomeState createState() => _NavHomeState(homeScaffold: homeScaffold);
}

class _NavHomeState extends State<NavHome> {
  _NavHomeState({this.homeScaffold});

  final GlobalKey<ScaffoldState> homeScaffold;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  var currentIndex = 0;
  final _pages = [
    BottomHomePage(),
    BottomMyCoursespage(),
    BottomNotificationPage(),
    BottomProfilePage()

  ];
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
            canvasColor: Colors.indigo,
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: Colors.red,
            textTheme: Theme
                .of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: Colors.yellow))),

        // decoration: BoxDecoration(
        //   boxShadow: [
        //     BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
        //   ],
        // ),
        child: BottomNavigationBar(
          elevation: 5,
          // fixedColor: Colors.orange,
          // type: BottomNavigationBarType.fixed

          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black54,

          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.arrow_drop_down_circle_outlined), title: Text("My Courses")),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), title: Text("Notifications")),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text("Profile")),
          ],
          currentIndex: _index,
          onTap: (current) {
            setState(() {
              _index = current;
            });
          },
        ),
      ),
      appBar: AppBar(
          titleSpacing: 0.0,
          elevation: 0,
          title: Text("Home"),
          backgroundColor: Colors.transparent,
          actions: [
            InkWell(
              onTap: ()
              {
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (_) => MyHomePage(title:"helllo")),
                // );
              },
              child: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Icon(Icons.shopping_cart,color: Colors.indigo,size: 40,)
              ),
            ),
          ],
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
      body: _pages[_index],
    );
  }
}
