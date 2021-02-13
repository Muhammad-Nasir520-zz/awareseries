

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class BottomMyCoursespage extends StatefulWidget {
  @override
  _BottomMyCoursespageState createState() => _BottomMyCoursespageState();
}

class _BottomMyCoursespageState extends State<BottomMyCoursespage> {

  var varShowPercent=0.7*100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
       // backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white10,
        title: Text('My Courses',style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(

          children: [


            myCoursesWidget(0.7,0.7*100,"Drive Aware"),
            SizedBox(height: 15,),

            myCoursesWidget(0.4,0.4*100,"Electrical Vehicale & hybrid Aware "),
            SizedBox(height: 15,),
            myCoursesWidget(0.8,0.8*100,"RoadSide Aware"),
            SizedBox(height: 15,),
            myCoursesWidget(0.5,0.5*100,"Smart Motorways Aware"),



          ],
        ),
      ),
    );
  }

  Widget myCoursesWidget(var varpercent,var varShowPercent,String getTitle )
  {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 5,),
        Image.asset('assets/awaremycourse.jpg',height: 65,width: 55,),

        SizedBox(width: 10,),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Text("$getTitle",style: TextStyle(color: Colors.black,fontSize: 20,
                  fontWeight: FontWeight.bold)),
              SizedBox(height: 5,),

              Text("Jhon Purcell"),
              SizedBox(height: 3,),


              new LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 120,
                animation: true,
                lineHeight: 5.0,
                animationDuration: 2000,
                percent: varpercent,
                //center: Text("90.0%",style: TextStyle(color: Colors.white),),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.indigo,
              ),
              SizedBox(height: 3,),
              Text("$varShowPercent% completed",),





            ],
          ),
        )
      ],
    );
  }
}
