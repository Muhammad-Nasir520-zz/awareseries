import 'package:awareseries/src/screen/addtocart/cart.dart';
import 'package:awareseries/src/screen/addtocart/dish_object.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.discription}) : super(key: key);
  final String title;
  String discription;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Dish> _dishes = List<Dish>();
  List<Dish> _cartList = List<Dish>();

  @override
  void initState() {
    super.initState();
    _populateDishes(widget.title);
  }

  @override
  Widget build(BuildContext context) {
    var item = _dishes[0];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 8.0),
            child: GestureDetector(
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    size: 36.0,
                  ),
                  if (_cartList.length > 0)
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: CircleAvatar(
                        radius: 8.0,
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        child: Text(
                          _cartList.length.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Cart(_cartList),
                  ),
                );
              },
            ),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: ListView(
          children: [
            Text(
              widget.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(widget.discription),
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
              height: 35.0,
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
            SizedBox(height: 10,),
            Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  child: (!_cartList.contains(item))
                      ? Column(
                    children: [
                      Container(
                        height: 35,
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

                          child: Center(
                            child: Text(
                              "Add to Cart",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),

                        ),
                    ],
                  )
                      : Column(
                    children: [
                      Container(
                        height: 35,
                          color: Colors.indigo,
                          child: Center(
                            child: Text(
                              "Remove from Cart",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),

                      ),
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      if (!_cartList.contains(item))
                        _cartList.add(item);
                      else
                        _cartList.remove(item);
                    });
                  },
                ),
              ),

          ],
        ),
      ),
      //_buildGridView(),
    );
  }

  // ListView _buildListView() {
  //   return ListView.builder(
  //     itemCount: _dishes.length,
  //     itemBuilder: (context, index) {
  //       var item = _dishes[index];
  //       return Card(
  //           elevation: 4.0,
  //           child: ListTile(
  //             // leading: Icon(
  //             //   item.icon,
  //             //   color: item.color,
  //             // ),
  //             title: Text(item.name),
  //             trailing: GestureDetector(
  //               child: (!_cartList.contains(item))
  //                   ? Icon(
  //                 Icons.add_circle,
  //                 color: Colors.green,
  //               )
  //                   : Icon(
  //                 Icons.remove_circle,
  //                 color: Colors.red,
  //               ),
  //               onTap: () {
  //                 setState(() {
  //                   if (!_cartList.contains(item))
  //                     _cartList.add(item);
  //                   else
  //                     _cartList.remove(item);
  //                 });
  //               },
  //             ),
  //           ),
  //         );
  //
  //     },
  //   );
  // }
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

  // GridView _buildGridView() {
  //   return GridView.builder(
  //       padding: const EdgeInsets.all(4.0),
  //       gridDelegate:
  //           SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
  //       itemCount: _dishes.length,
  //       itemBuilder: (context, index) {
  //         var item = _dishes[index];
  //         return Stack(
  //           fit: StackFit.loose,
  //           alignment: Alignment.center,
  //           children: <Widget>[
  //             Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: <Widget>[
  //                 // Icon(
  //                 //   item.icon,
  //                 //   color: (_cartList.contains(item))
  //                 //       ? Colors.grey
  //                 //       : item.color,
  //                 //   size: 100.0,
  //                 // ),
  //                 Text(
  //                   item.name,
  //                   textAlign: TextAlign.center,
  //                   style: Theme.of(context).textTheme.subhead,
  //                 )
  //               ],
  //             ),
  //             Padding(
  //               padding: const EdgeInsets.only(
  //                 right: 8.0,
  //                 bottom: 8.0,
  //               ),
  //               child: Align(
  //                 alignment: Alignment.bottomRight,
  //                 child: GestureDetector(
  //                   child: (!_cartList.contains(item))
  //                       ? Column(
  //                           children: [
  //                             Container(
  //                               child: FlatButton(
  //                                 color: Colors.indigo,
  //                                 child: Text(
  //                                   "Add to Cart",
  //                                   style: TextStyle(color: Colors.white),
  //                                 ),
  //                                 onPressed: () {},
  //                               ),
  //                             ),
  //                           ],
  //                         )
  //                       : Column(
  //                           children: [
  //                             Container(
  //         child: FlatButton(
  //         color: Colors.red,
  //         child: Text(
  //         "Add to Cart",
  //         style: TextStyle(color: Colors.white),
  //         ),
  //         onPressed: () {},
  //         ),
  //
  //
  //                              )
  //
  //                              ],
  //
  //                         ),
  //                   onTap: () {
  //                     setState(() {
  //                       if (!_cartList.contains(item))
  //                         _cartList.add(item);
  //                       else
  //                         _cartList.remove(item);
  //                     });
  //                   },
  //                 ),
  //               ),
  //             ),
  //           ],
  //         );
  //       });
  // }

  void _populateDishes(String title) {
    var list = <Dish>[
      Dish(
        name: title,
        // icon: Icons.fastfood,
        // color: Colors.amber,
      ),
    ];

    setState(() {
      _dishes = list;
    });
  }
}
