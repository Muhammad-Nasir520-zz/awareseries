
import 'package:flutter/material.dart';

class BottomNotificationPage extends StatefulWidget {
  @override
  _BottomNotificationPageState createState() => _BottomNotificationPageState();
}

class _BottomNotificationPageState extends State<BottomNotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          notificationWidget(),
          notificationWidget(),

          notificationWidget(),

          notificationWidget(),

          notificationWidget(),

          notificationWidget(),

          notificationWidget(),

          notificationWidget(),

          notificationWidget(),
        


        ],
      ),

    );
  }

  Widget notificationWidget()
  {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.grey),
        ),

      ),

      child: Column(
        children: [
          Row(
            children: [

              Icon(Icons.fiber_manual_record, color: Colors.indigo, size: 15),
              SizedBox(width: 10,),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/ben.png'),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                child: Flexible(fit: FlexFit.tight,
                    flex: 1,child: Text("Drive Aware",
                      style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 20,color: Colors.black54),)),
              ),

              Container(
                margin: EdgeInsets.only(right: 10),
                child: Text("10 days ago"),
              )

            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 10,),
              Flexible(fit: FlexFit.tight,
                  flex: 1,
                  child: Icon(Icons.star, color: Colors.grey, size: 15)),
              Flexible(
                  fit: FlexFit.tight,
                  flex: 4,
                  child: Text("thanks for signing up to the course",
                    style: TextStyle(color: Colors.grey),))

            ],
          )
        ],
      ),
    );
  }
}
