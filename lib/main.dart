import 'package:awareseries/src/authentication/loginPage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'introduction_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      title: 'Aware Series',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: OnBoardingPage(),
    );
  }
}

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => LoginPage()),
    );
  }

  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset(
        'assets/$assetName.jpg',
        width: 350.0,
        height: 200,
      ),
      //alignment: Alignment.topCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 28.0, fontWeight: FontWeight.w700, color: Colors.white),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(1.0, 1.0, 1.0, 1.0),

    //   boxDecoration: BoxDecoration(
    // gradient: LinearGradient(
    //     stops: [0.3, 5.0],
    // begin: Alignment.topCenter,
    //     end: Alignment.bottomCenter,
    //     colors: [Colors.indigoAccent, Colors.indigo])),
      //pageColor:

      imagePadding: EdgeInsets.zero,
    );

    return Container(




      child: IntroductionScreen(
        key: introKey,
        pages: [
          // PageViewModel(
          //   title: "Fractional shares",
          //   body:
          //   "Instead of having to buy an entire share, invest any amount you want.",
          //   image: _buildImage('img1'),
          //   decoration: pageDecoration,
          // ),
          // PageViewModel(
          //   title: "Learn as you go",
          //   body:
          //   "Download the Stockpile app and master the market with our mini-lesson.",
          //   image: _buildImage('img2'),
          //   decoration: pageDecoration,
          // ),
          PageViewModel(
            title: "",
            bodyWidget: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    SizedBox(height: 20,),
                    Container(
                      child:Image.asset("assets/aware.png") ,

                    ),
                    SizedBox(height: 10,),

                  ],
                )),

            // image: _buildImage('img3'),
            decoration: pageDecoration,
          ),
          PageViewModel(
           title: "",
            bodyWidget: Container(

                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(child: Center(
                  child: Text("AWARE Series",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                ),),
                // Container(
                //   child:Image.asset("assets/img1.jpg") ,
                //
                // ),
                SizedBox(height: 20,),
                Center(
                    child: Text(
                  "We welcome you to the official AWARE Series app.",
                  style: TextStyle(fontSize: 19, color: Colors.black,),
                        textAlign: TextAlign.center
                )),
                SizedBox(height: 10,),
                Text("The AWARE Series goes above and beyond in the training"
                    " and development of your"
                    " professional needs.",style: TextStyle(fontSize: 19, color: Colors.black,),
                    textAlign: TextAlign.center),
                SizedBox(height: 10,),
                Text("We offer a tailored framework of"
                    " bespoke courses designed and delivered"
                    " by industry experts, helping you progress"
                    " in the automotive, logistics, emergency "
                    "services industry and beyond.",style: TextStyle(fontSize: 19, color: Colors.black,),
                    textAlign: TextAlign.center),
              ],
            )),

            // image: _buildImage('img3'),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "",
            bodyWidget: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [


                    SizedBox(height: 20,),
                    Center(
                        child: Text(
                            "The AWARE Series app allows you to view and book our range of face-face"
                                "& online courses, see your saved and upcoming courses, and receive "
                                "the relevant information you need instantly, helping"
                                "you progress in the industry.",
                            style: TextStyle(fontSize: 19, color: Colors.black,),
                            textAlign: TextAlign.center
                        )),
                    SizedBox(height: 10,),

                  ],
                )),

            // image: _buildImage('img3'),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "",
            bodyWidget: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    SizedBox(height: 20,),
                    Center(
                        child: Text(
                            "Our team is available for you should you need help.Please contact ( email here )",
                            style: TextStyle(fontSize: 19, color: Colors.black,),
                            textAlign: TextAlign.center
                        )),
                    SizedBox(height: 10,),

                  ],
                )),

            // image: _buildImage('img3'),
            decoration: pageDecoration,
          ),

        ],
        onDone: () => _onIntroEnd(context),
        //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
        showSkipButton: true,
        skipFlex: 0,
        nextFlex: 0,
        skip: const Text('Skip',style: TextStyle(color: Colors.indigo),),
        next: const Icon(Icons.arrow_forward,color: Colors.indigo,),
        done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600,color: Colors.indigo)),
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          color: Color(0xFFBDBDBD),
          activeSize: Size(15.0, 15.0),
          activeColor: Colors.indigo,
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
      ),
    );
  }
}


