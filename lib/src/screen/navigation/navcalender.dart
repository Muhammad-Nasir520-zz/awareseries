import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class NavCalender extends StatefulWidget {
  NavCalender({this.homeScaffold});

  final GlobalKey<ScaffoldState> homeScaffold;

  @override
  _NavCalenderState createState() =>
      _NavCalenderState(homeScaffold: homeScaffold);
}

class _NavCalenderState extends State<NavCalender> {
  _NavCalenderState({this.homeScaffold});

  final GlobalKey<ScaffoldState> homeScaffold;

  String selectedDate = "SELECT DATE";

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
        body: GestureDetector(
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("EVENTS FROM"),
                          buildSelectDate(),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("SEARCH:    "),
                          search(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    child: FlatButton(
                      color: Colors.indigo,
                      child: Text(
                        "FIND EVENTS",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: GestureDetector(
                  child: GridView.count(
                    physics: ScrollPhysics(),
                    crossAxisCount: 1,
                    childAspectRatio: 5 / 2,
                    shrinkWrap: true,
                    children: [
                      courseCalenderItems(),
                      courseCalenderItems(),
                      courseCalenderItems(),
                      courseCalenderItems(),
                      courseCalenderItems(),
                      courseCalenderItems(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )

        //
        );
  }

  Widget courseCalenderItems() {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              child: GridTile(
                child: Container(
                    child: Image.asset(
                  "assets/aware.png",
                  fit: BoxFit.fill,
                )),
                footer: GridTileBar(
                  subtitle: Text(
                    "West Midlands",
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.indigo,
                  title: Text(
                    "Ev and HybridAWARE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  border: Border(
                    //right: BorderSide(width: 1.0, color: Colors.grey),
                    bottom: BorderSide(width: 1.0, color: Colors.grey),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(width: 1.0, color: Colors.grey),
                          ),
                        ),
                        child:
                            Text("February 15 @ 8:00 am -February 19 @ 5:00pm"),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      child: Row(
                        children: [
                          Expanded(
                              child: Icon(
                            Icons.location_on,
                            color: Colors.indigo,
                          )),
                          Expanded(
                              flex: 2,
                              child: Text(
                                "Google Map",
                                style: TextStyle(color: Colors.indigo),
                              ))
                        ],
                      ),
                    )),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text("HybridAWARE – Practical Course"),
              )
            ],
          ))
        ],
      ),
    );
  }

  Widget buildSelectDate() {
    return InkWell(
      onTap: () {
        print("date picker selected");
        // show timer picker dialog
        showDatePickerDialog();
      },
      child: Padding(
        padding: EdgeInsets.only(top: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 150,
              height: 35,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.indigo,
                border: Border(
                  top: BorderSide(width: 1, color: Colors.grey),
                  bottom: BorderSide(width: 1, color: Colors.grey),
                  left: BorderSide(width: 1, color: Colors.grey),
                  right: BorderSide(width: 1, color: Colors.grey),
                ),
                borderRadius: BorderRadius.circular(2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedDate,
                    style: TextStyle(color: Colors.white),
                  ),
                  SvgPicture.asset(
                    'assets/images/double_arrow.svg',
                    color: Colors.black,
                    width: 12,
                    height: 12,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<Null> showDatePickerDialog() async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2022),
    );
    if (picked != null) {
      print(picked.toString());
      setState(() {
        selectedDate = "${picked.year}-${picked.month}-${picked.day}";
      });
    }
  }

  Widget search(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.50,
      decoration: BoxDecoration(),
      height: 32,
      child: TextField(
        cursorColor: Colors.white,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(1),
          ),
          fillColor: Colors.indigo,
          filled: true,
          hintText: "Keyword",
          hintStyle: TextStyle(color: Colors.white),
          contentPadding: EdgeInsets.symmetric(vertical: 8),
        ),
      ),
    );
  }
}
