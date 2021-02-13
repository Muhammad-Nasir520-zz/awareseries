
import 'package:awareseries/src/model/homecoursesmodel.dart';
import 'package:awareseries/src/screen/addtocart/carthome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../courses_detail_page.dart';

class HomeItems extends StatelessWidget {
  String title;
  String discription;
  String img;

  HomeItems(this.title,this.discription,this.img);
  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
      onTap: ()
      {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => MyHomePage(title:title,discription:discription)),
        );
      },
      child: Container(
        decoration:
        BoxDecoration(
            border:
            Border.all(
              color: Colors
                  .grey,
            ),
            borderRadius: BorderRadius
                .all(Radius
                .circular(
                5))),
        child: GridTile(


              child: Image.asset(img,fit: BoxFit.cover,),

          footer: GridTileBar(
            subtitle: Text(discription,style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.indigo,
            title: Text(title,textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,
                fontWeight: FontWeight.bold),),
          ),

        ),
      ),
    );
  }
}

