

import 'package:awareseries/src/model/homecoursesmodel.dart';
import 'package:awareseries/src/screen/widgets/homeitems.dart';
import 'package:flutter/material.dart';
class BottomHomePage extends StatefulWidget {
  @override
  _BottomHomePageState createState() => _BottomHomePageState();
}

class _BottomHomePageState extends State<BottomHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: GridView.builder(
           padding: EdgeInsets.only(left: 50,right: 50,top: 5),
           itemCount:homeCoursesList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            //childAspectRatio: 3/2,
            mainAxisSpacing: 10
            //childAspectRatio: 3/2

          ),
          itemBuilder: (context,i)=> HomeItems(
            homeCoursesList[i].title,
            homeCoursesList[i].discription,
            homeCoursesList[i].img,
          ),
          //     Container(
          //   child: Image.asset(homeCoursesList[i].img)
          // ),

      ),
    );
  }
}
