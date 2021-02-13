


import 'package:awareseries/src/authentication/loginPage.dart';
import 'package:awareseries/src/authentication/signupPage.dart';
import 'package:awareseries/src/screen/navigation/navtv.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';

import 'bottomnavigation/bottom_profilepage.dart';
import 'navigation/nav_header.dart';
import 'navigation/nav_item.dart';
import 'navigation/navcalender.dart';
import 'navigation/navcontactus.dart';
import 'navigation/navhome.dart';
import 'navigation/navportals.dart';
import 'navigation/navsetting.dart';





class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  BuildContext context;
  int navSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    YYDialog.init(context);
    this.context = context;

    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      drawer: buildNavigationDrawer(),
      body: navPages()[navSelectedIndex],
    );
  }

  List<Widget> navPages() {
    return [
      NavHome(
        homeScaffold: _scaffoldKey,
      ),
      NavCalender(
        homeScaffold: _scaffoldKey,
      ),
      NavPortals(homeScaffold: _scaffoldKey,),
      NavTV(homeScaffold: _scaffoldKey,),
      NavContactUs(homeScaffold: _scaffoldKey,),
      NavSetting(homeScaffold: _scaffoldKey,)
      // NavRequestsPage(
      //   homeScaffold: _scaffoldKey,
      // ),
      // NavDataCalendarPage(
      //   homeScaffold: _scaffoldKey,
      // ),
      // MessagesScreen(
      //   homeScaffold: _scaffoldKey,
      // ),
      // NavBookmarksPage(
      //   homeScaffold: _scaffoldKey,
      // ),
      // NavSettingsPage(
      //   homeScaffold: _scaffoldKey,
      // ),
    ];
  }

// open nav drawer
  void openDrawer() {
    _scaffoldKey.currentState.openDrawer();
  }

  // build navigation drawer
  Widget buildNavigationDrawer() {
    return Container(
      width: 250,
      child: Drawer(
        child: Container(
          padding: EdgeInsets.only(left: 24, right: 16, top: 40, bottom: 24),
          child: Column(
            children: [
              // navigation header
              StreamBuilder(

                  builder: (context, snapshot) {
                    return NavHeader(
                      context: context,
                      homeScaffold: _scaffoldKey,
                      // imgUrl: snapshot.data['imgUrl'],
                      // age: snapshot.data['age'],
                      // gender: snapshot.data['gender'],
                      // address: snapshot.data['address'],
                      // name: snapshot.data['name'],
                    );
                  }),
              // margin
              SizedBox(
                height: 40,
              ),
              // navigation drawer menu
              buildNavigationMenu(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNavigationMenu() {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          // Home
          buildNavItem(
            title: "Home",
            imgPath: "assets/images/home.svg",
            index: 0,
          ),
          // margin
          SizedBox(
            height: 8,
          ),
          // Notifications
          // buildNotificationsItem(),
          buildNavItem(
              title: "Find & Book Courses",
              imgPath: "assets/images/bookmarks.svg",
              index: 0),
          // margin
          SizedBox(
            height: 8,
          ),
          // Requests
          buildNavItem(
              title: "Portals & Consortium",
              imgPath: "assets/images/chatboxes.svg",
              index: 2),
          // margin
          SizedBox(
            height: 8,
          ),
          // Date calender
          // buildDateCalendarItem(),
          buildNavItem(
              title: "Course Calendar",
              imgPath: "assets/images/date_range.svg",
              index: 1),

          // margin
          SizedBox(
            height: 8,
          ),
          // Messages
          // buildMessagesItem(),
          buildNavItem(
              title: "Aware Series TV",
              imgPath: "assets/images/chatboxes.svg",
              index: 3),

          // margin
          SizedBox(
            height: 8,
          ),
          // Bookmarks
          // buildBookmarksItem(),
          buildNavItem(
              title: "Contact Us",
              imgPath: "assets/images/bookmarks.svg",
              index: 4),

          // spacer
          Spacer(),
          // Settings
          // buildSettingsItem(),
          buildNavItem(
              title: "Settings",
              imgPath: "assets/images/settings.svg",
              index: 5),

          // margin
          SizedBox(
            height: 8,
          ),
          // Logout
          // buildLogoutItem(),
          buildNavItem(
              title: "Logout", imgPath: "assets/images/logout.svg", index: 7),
        ],
      ),
    );
  }

  // build nav home item
  Widget buildNavItem({String title, String imgPath, int index}) {
    return NavItem(
      onPressed: () {
        print("$title taped");
        if (index != 7) {
          setState(() {
            navSelectedIndex = index;
          });
        } else {
          logout();
        }
        closeDrawer();
      },
      title: title,
      imgPath: imgPath,
      fontWeight: navSelectedIndex == index ? FontWeight.w700 : FontWeight.w400,
    );
  }

  void closeDrawer() {
    if (_scaffoldKey.currentState.isDrawerOpen) {
      Navigator.pop(context);
    }
  }

  // logout
  void logout() {
    print("helllllllo theeeeere");
    // _auth.signOut();
    // Navigator.pushNamedAndRemoveUntil(context, '/wrapper', (context) => false);
    // PrefUtils.saveToken(null);
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => SignUp()),
    );
  }
}

