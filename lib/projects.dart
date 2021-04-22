import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:math';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_icons/flutter_icons.dart';

import 'package:url_launcher/url_launcher.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

var fntsz;
var fsize;

class _ProjectsState extends State<Projects> {
  int _currentIndex = 0;

  List cardList = [
    Item1(),
    Item2(),
    Item3(),
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
    fntsz = MediaQuery.of(context).size.height * 0.025;
    fsize = fntsz;
    var afntsz = MediaQuery.of(context).size.height * 0.015;
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.025,
        ),
        Text(
          "All Creative Works:",
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Roboto_Mono",
              fontSize: 1.25 * fntsz,
              fontWeight: FontWeight.bold),
        ).shimmer(
          primaryColor: Colors.pink,
          secondaryColor: Colors.amber,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.025,
        ),
        Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.transparent),
            child: Column(
              children: <Widget>[
                CarouselSlider(
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.5,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 5),
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
    );
  }
}

//items
class Item1 extends StatelessWidget {
  const Item1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _launchURL('https://github.com/rudratejC/Computer-Engineering-e-Books');
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.3, 1],
              colors: [Color(0xff5f2c82), Color(0xff49a09d)]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.50,
                height: MediaQuery.of(context).size.height * 0.15,
                color: Colors.transparent,
                child: Center(
                  child: AutoSizeText(
                    "Computer Engineering e-Books: Mobile App",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Roboto_Mono",
                      fontSize: fntsz,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.50,
                height: MediaQuery.of(context).size.height * 0.15,
                color: Colors.transparent,
                child: Center(
                  child: AutoSizeText(
                    "Mobile app that contains all the Computer Science Engineering Related books, Categorised according to the Semesters keeping an account of Syllabus of all reputed universities.Technologies used: Flutter, Dart, Firebase.",
                    style: TextStyle(
                      color: Colors.white70,
                      fontFamily: "Roboto_Mono",
                      fontSize: fntsz * 0.5,
                    ),
                    overflowReplacement: AutoSizeText(
                      "Mobile app that contains all the Computer Science Engineering Related books \nTechnologies used: Flutter, Dart, Firebase.",
                      style: TextStyle(
                        color: Colors.white70,
                        fontFamily: "Roboto_Mono",
                        fontSize: fntsz * 0.5,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _launchURL('https://github.com/rudratejC/portfolio_rudratej');
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.3, 1],
              colors: [Colors.black, Colors.cyanAccent]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.50,
                height: MediaQuery.of(context).size.height * 0.15,
                color: Colors.transparent,
                child: Center(
                  child: AutoSizeText(
                    "MacOS Style Portfolio",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Roboto_Mono",
                      fontSize: fntsz,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.50,
                height: MediaQuery.of(context).size.height * 0.15,
                color: Colors.transparent,
                child: Center(
                  child: AutoSizeText(
                    "Mac OS style developer portfolio website built using Flutter Web",
                    style: TextStyle(
                      color: Colors.white70,
                      fontFamily: "Roboto_Mono",
                      fontSize: fntsz * 0.5,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _launchURL('https://github.com/rudratejC/AttendanceCSV');
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.3, 1],
              colors: [Colors.black, Colors.redAccent[400]]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.50,
                height: MediaQuery.of(context).size.height * 0.15,
                color: Colors.transparent,
                child: Center(
                  child: AutoSizeText(
                    "AttendanceCSV",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Roboto_Mono",
                      fontSize: fntsz,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.50,
                height: MediaQuery.of(context).size.height * 0.15,
                color: Colors.transparent,
                child: Center(
                  child: AutoSizeText(
                    "An attendance taking app for taking attendance during online lectures.The App can take attendance & stores in CSV file format.Technologies used: Java Swing, Java PrintWriter.",
                    style: TextStyle(
                      color: Colors.white70,
                      fontFamily: "Roboto_Mono",
                      fontSize: fntsz * 0.5,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_launchURL(String url) async {
  var link = url;
  if (await canLaunch(link)) {
    await launch(link);
  } else {
    throw 'Could not launch $link';
  }
}
