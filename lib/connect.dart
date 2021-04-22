import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:math';
import 'package:velocity_x/velocity_x.dart';
import 'dart:ui' as ui;
import 'package:flutter_icons/flutter_icons.dart';

import 'package:url_launcher/url_launcher.dart';

class Connect extends StatefulWidget {
  @override
  _ConnectState createState() => _ConnectState();
}

var fntsz;
var fsize;

class _ConnectState extends State<Connect> {
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
          "Connect with me:",
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Roboto_Mono",
              fontSize: 1.25 * fntsz,
              fontWeight: FontWeight.bold),
        ).shimmer(
          primaryColor: Colors.blue,
          secondaryColor: Colors.deepPurple,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Stack(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    _launchURL("https://github.com/rudratejc");
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [Vx.purple600, Colors.black],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        boxShadow: [
                          BoxShadow(
                            color: Vx.purple400.withOpacity(0.4),
                            blurRadius: 6,
                            offset: Offset(0, 6),
                          ),
                        ]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _launchURL("https://github.com/rudratejc");
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/github.png',
                          height: MediaQuery.of(context).size.width * 0.05,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.025,
                        ),
                        AutoSizeText(
                          "Github",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Roboto_Mono",
                              fontSize: fntsz),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Stack(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    _launchURL(
                        "https://www.linkedin.com/in/rudratej-chilkewar-176ab7193/");
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [Vx.purple600, Colors.black],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        boxShadow: [
                          BoxShadow(
                            color: Vx.purple400.withOpacity(0.4),
                            blurRadius: 6,
                            offset: Offset(0, 6),
                          ),
                        ]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _launchURL(
                        "https://www.linkedin.com/in/rudratej-chilkewar-176ab7193/");
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/linkedIn.png',
                          height: MediaQuery.of(context).size.width * 0.05,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.025,
                        ),
                        AutoSizeText(
                          "LinkedIn",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Roboto_Mono",
                              fontSize: fntsz),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Stack(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    _launchURL('mailto:rudratejchilkewar@gmail.com');
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [Vx.purple600, Colors.black],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        boxShadow: [
                          BoxShadow(
                            color: Vx.purple400.withOpacity(0.4),
                            blurRadius: 6,
                            offset: Offset(0, 6),
                          ),
                        ]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _launchURL('mailto:rudratejchilkewar@gmail.com');
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/gmail.png',
                          height: MediaQuery.of(context).size.width * 0.05,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.025,
                        ),
                        AutoSizeText(
                          "e-Mail ",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Roboto_Mono",
                              fontSize: fntsz),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Stack(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    _launchURL('https://wa.me/+917249266212');
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [Vx.purple600, Colors.black],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        boxShadow: [
                          BoxShadow(
                            color: Vx.purple400.withOpacity(0.4),
                            blurRadius: 6,
                            offset: Offset(0, 6),
                          ),
                        ]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _launchURL('https://wa.me/+917249266212');
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/wa.png',
                          height: MediaQuery.of(context).size.width * 0.05,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.025,
                        ),
                        AutoSizeText(
                          "WhatsApp",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Roboto_Mono",
                              fontSize: fntsz),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
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
