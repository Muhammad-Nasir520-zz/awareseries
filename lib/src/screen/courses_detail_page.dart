import 'package:awareseries/src/screen/addtocart/cart.dart';
import 'package:awareseries/src/screen/addtocart/dish_object.dart';
import 'package:flutter/material.dart';

class CoursesDetailScreen extends StatefulWidget {
  String title;
  String discription;

  CoursesDetailScreen(this.title, this.discription);

  @override
  _CoursesDetailScreenState createState() =>
      _CoursesDetailScreenState(title, discription);
}

class _CoursesDetailScreenState extends State<CoursesDetailScreen> {
  String title;
  String discription;

  _CoursesDetailScreenState(this.title, this.discription);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(""),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: ListView(
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(discription),
            SizedBox(
              height: 20,
            ),
            Text(
              "Topics",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            topicWidget("Daily Checks – why and when?"),
            topicWidget("Hazard Awareness"),
            topicWidget("hysical & Mental Health"),
            topicWidget("he System of Vehicle Control"),
            topicWidget(
                "Observational Links Perception – how we see things compared to others"),
            topicWidget("Smart motorway systems and the red cross campaign"),
            topicWidget(
                "Effects of alcohol, drugs (Inc. Over the Counter and prescribed drugs)"),
            topicWidget("Sleep deprivation."),
            SizedBox(
              height: 20,
            ),
            Text(
              "Focus",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text("Focus on all aspects of prevention and protection"
                " within the drivers’ control including ensuring that Learners "
                "understand that their health and wellbeing is essential to"
                " their safety at work and how effective they are in"
                " their performance, how their driving"
                " style affects the environment and how "
                "they can implement best practice to protect"
                " themselves and other road users."),
            SizedBox(
              height: 20,
            ),
            Text(
              "PKR 1,900",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Row(
              children: [
                Icon(
                  Icons.alarm_on_sharp,
                  size: 25,
                  color: Colors.red,
                ),
                Text(
                  "90% off-2 days left at this price!",
                  style: TextStyle(color: Colors.red),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50.0,
              //color: Colors.indigo,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.indigo,
                      style: BorderStyle.solid,
                      width: 1.0,
                    ),
                    //color: Colors.transparent,
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Text(
                          "Buy now",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget topicWidget(String getTopic) {
    return Row(
      children: [
        Icon(Icons.fiber_manual_record, color: Colors.grey, size: 12),
        SizedBox(
          width: 10,
        ),
        Expanded(child: Text("$getTopic")),
      ],
    );
  }
}
