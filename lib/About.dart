import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:math';
import 'package:velocity_x/velocity_x.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

var fsize;

class _AboutState extends State<About> {
  int _currentIndex = 0;

  List cardList = [
    Item1(),
    Item2(),
    Item3(),
    Item4(),
    Item5(),
    Item6(),
    Item7()
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    var fntsz = MediaQuery.of(context).size.height * 0.025;
    fsize = fntsz;
    var afntsz = MediaQuery.of(context).size.height * 0.015;
    var aboutText =
        "Hi there! I'm Rurdratej Laxman Chilkewar, a Third Year Computer Engineering Student. I love Coding & creating useful Apps ,I have been learning programming for the past two years now.";
    var aboutTextOF =
        "Hi there! I'm Rurdratej L. C., a 3nd Year Computer Engg. Student. I love Coding & creating useful Apps";
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),
          Text(
            "About:",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Roboto_Mono",
                fontSize: fntsz),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),
          CircleAvatar(
            backgroundColor: Vx.purple400,
            backgroundImage: AssetImage('assets/pic.png'),
            radius: MediaQuery.of(context).size.height * 0.12,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),
          // Container(
          //   // decoration: BoxDecoration(
          //   //   color: Vx.purple400,
          //   //   borderRadius: BorderRadius.all(Radius.circular(10)),
          //   // ),
          //   width: MediaQuery.of(context).size.width * 0.35,
          //   child: AutoSizeText(
          //     aboutText,

          //     // Text(
          //     //   aboutText,
          //     maxLines: 3,
          //     style: TextStyle(
          //       color: Colors.white,
          //       fontFamily: "Roboto_Mono",
          //       //fontSize: afntsz
          //     ),
          //   ),
          // ),
          Container(
            width: MediaQuery.of(context).size.width * 0.50,
            height: MediaQuery.of(context).size.height * 0.15,
            color: Colors.transparent,
            child: AutoSizeText(
              aboutText,
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Roboto_Mono",
                fontSize: fntsz,
              ),
              overflowReplacement: AutoSizeText(
                aboutTextOF,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Roboto_Mono",
                  fontSize: fntsz,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),
          AutoSizeText(
            "Programming languages and Technologies that I'm familiar with:",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Roboto_Mono",
                fontSize: afntsz),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.transparent),
              child: Column(
                children: <Widget>[
                  CarouselSlider(
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height * 0.12,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 700),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      // pauseAutoPlayOnTouch: true,
                      aspectRatio: 2.0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                    items: cardList.map((card) {
                      return Builder(builder: (BuildContext context) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.8,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Card(
                            color: Color(0xff252733),
                            child: card,
                          ),
                        );
                      });
                    }).toList(),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: map<Widget>(cardList, (index, url) {
                  //     return Container(
                  //       width: 10.0,
                  //       height: 10.0,
                  //       margin: EdgeInsets.symmetric(
                  //           vertical: 10.0, horizontal: 2.0),
                  //       decoration: BoxDecoration(
                  //         shape: BoxShape.circle,
                  //         color: _currentIndex == index
                  //             ? Colors.blueAccent
                  //             : Colors.grey,
                  //       ),
                  //     );
                  //   }),
                  // ),
                ],
              )),
        ],
      ),
    );
  }
}

//items
class Item1 extends StatelessWidget {
  const Item1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [
              0.3,
              1
            ],
            colors: [
              Color(0xffff4000),
              Color(0xffffcc66),
            ]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage(
              "assets/android.jpg",
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text("Android",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: fsize,
                  fontFamily: "Roboto_Mono",
                  fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Color(0xff5f2c82), Color(0xff49a09d)]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage(
              "assets/flutter.png",
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text("Flutter",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: fsize,
                  fontFamily: "Roboto_Mono",
                  fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [
              0.3,
              1
            ],
            colors: [
              Color(0xffff4000),
              Color(0xffffcc66),
            ]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage(
              "assets/java.jpg",
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text("Java",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: fsize,
                  fontFamily: "Roboto_Mono",
                  fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

class Item4 extends StatelessWidget {
  const Item4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Color(0xff5f2c82), Color(0xff49a09d)]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage(
              "assets/kotlin.png",
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text("Kotlin",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: fsize,
                  fontFamily: "Roboto_Mono",
                  fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

class Item5 extends StatelessWidget {
  const Item5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Colors.teal, Colors.purple]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage(
              "assets/flutter.png",
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text("Dart",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: fsize,
                  fontFamily: "Roboto_Mono",
                  fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

class Item6 extends StatelessWidget {
  const Item6({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [
              0.3,
              1
            ],
            colors: [
              Color(0xffff4000),
              Color(0xffffcc66),
            ]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage(
              "assets/c.png",
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text("C",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: fsize,
                  fontFamily: "Roboto_Mono",
                  fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

class Item7 extends StatelessWidget {
  const Item7({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Color(0xff5f2c82), Color(0xff49a09d)]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage(
              "assets/python.jpg",
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text("Python",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: fsize,
                  fontFamily: "Roboto_Mono",
                  fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
