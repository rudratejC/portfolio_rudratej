import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio_rudratej/About.dart';
import 'package:portfolio_rudratej/connect.dart';
import 'package:portfolio_rudratej/projects.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool aboutVisible = false;
  bool projectsVisible = false;
  bool connectVisible = false;
  @override
  Widget build(BuildContext context) {
    var icHeight = MediaQuery.of(context).size.width * 0.055;
    var icWidth = MediaQuery.of(context).size.width * 0.055;
    // var icHeight = MediaQuery.of(context).size.height * 0.095;
    // var icWidth = MediaQuery.of(context).size.height * 0.095;
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.black54,
        backgroundColor: Colors.grey[800],
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Image.asset('assets/apple.png'),
        ),
        centerTitle: false,
        title: Text(
          "Rudratej's Portfolio",
          style: TextStyle(
            fontFamily: "Roboto_Mono",
            fontSize: 12,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.wifi,
              size: 10,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
        toolbarHeight: 20,
      ),
      // appBar: PreferredSize(
      //   preferredSize: Size(MediaQuery.of(context).size.width, 20),
      //   child: SafeArea(
      //     child: Container(
      //       height: 20,
      //       color: Colors.black,
      //       child: //Center(child: Text('Fluter is great')),
      //           Row(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.all(5.0),
      //             child: Image.asset('assets/apple.png'),
      //           ),
      //           Text("Rudratej's Portfolio"),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/bg.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              child: Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 5,
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              print("hi");
                              aboutVisible = !aboutVisible;
                              if (projectsVisible)
                                projectsVisible = !projectsVisible;
                              if (connectVisible)
                                connectVisible = !connectVisible;
                            });
                          },
                          child: Image.asset(
                            "assets/finder.png",
                            fit: BoxFit.fill,
                            width: icWidth,
                            height: icHeight,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "About",
                          style: TextStyle(
                            fontFamily: "Roboto_Mono",
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              print("hi");
                              projectsVisible = !projectsVisible;
                              if (aboutVisible) aboutVisible = !aboutVisible;
                              if (connectVisible)
                                connectVisible = !connectVisible;
                            });
                          },
                          child: Image.asset(
                            "assets/terminal.png",
                            width: icWidth,
                            height: icHeight,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Projects",
                          style: TextStyle(
                            fontFamily: "Roboto_Mono",
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                        // SizedBox(
                        //   height: 12,
                        // ),
                        // Image.asset(
                        //   "assets/settings.png",
                        //   width: icWidth,
                        //   height: icHeight,
                        // ),
                        // SizedBox(
                        //   height: 5,
                        // ),
                        // Text(
                        //   "Skills",
                        //   style: TextStyle(
                        //     fontFamily: "Roboto_Mono",
                        //     fontSize: 10,
                        //     color: Colors.white,
                        //   ),
                        // ),
                        SizedBox(
                          height: 12,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              print("hi");
                              connectVisible = !connectVisible;
                              if (aboutVisible) aboutVisible = !aboutVisible;
                              if (projectsVisible)
                                projectsVisible = !projectsVisible;
                            });
                          },
                          child: Image.asset(
                            "assets/safari.png",
                            width: icWidth,
                            height: icHeight,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Connect",
                          style: TextStyle(
                            fontFamily: "Roboto_Mono",
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    "Hi there,",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.height * 0.035,
                      fontFamily: "Roboto_Mono",
                    ),
                  ),
                  Text(
                    "I'm Rudratej",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.height * 0.045,
                      fontFamily: "Roboto_Mono",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.025,
                        color: Colors.white,
                        fontFamily: "Roboto_Mono"),
                    child: AnimatedTextKit(repeatForever: true, animatedTexts: [
                      TyperAnimatedText("Computer Engg. Student"),
                      TyperAnimatedText("Mobile App Developer"),
                      TyperAnimatedText("Android Developer"),
                      TyperAnimatedText("Flutter Developer"),
                      TyperAnimatedText("Tech enthusiast"),
                    ]),
                  )
                ],
              ),
            ),
            Visibility(
                visible: aboutVisible,
                child: Center(
                    child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: Color(0xff252733),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.75,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                              topLeft: Radius.circular(12)),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.01),
                            Padding(
                              padding: const EdgeInsets.all(4),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    print("hi");
                                    aboutVisible = !aboutVisible;
                                    if (projectsVisible)
                                      projectsVisible = !projectsVisible;
                                    if (connectVisible)
                                      connectVisible = !connectVisible;
                                  });
                                },
                                child: Image.asset('assets/closeic.png'),
                              ),
                            ),
                          ],
                        ),

                        //close btn here
                      ),
                      About(),
                    ],
                  ),
                  height: MediaQuery.of(context).size.height * 0.75,
                  width: MediaQuery.of(context).size.width * 0.75,
                ))),
            Visibility(
                visible: projectsVisible,
                child: Center(
                    child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: Color(0xff252733),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.75,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                              topLeft: Radius.circular(12)),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.01),
                            Padding(
                              padding: const EdgeInsets.all(4),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    print("hi");
                                    projectsVisible = !projectsVisible;
                                    if (aboutVisible)
                                      aboutVisible = !aboutVisible;
                                    if (connectVisible)
                                      connectVisible = !connectVisible;
                                  });
                                },
                                child: Image.asset('assets/closeic.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Projects(),
                    ],
                  ),
                  height: MediaQuery.of(context).size.height * 0.75,
                  width: MediaQuery.of(context).size.width * 0.75,
                ))),
            Visibility(
                visible: connectVisible,
                child: Center(
                    child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: Color(0xff252733),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.75,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                              topLeft: Radius.circular(12)),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.01),
                            Padding(
                              padding: const EdgeInsets.all(4),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    print("hi");
                                    connectVisible = !connectVisible;
                                    if (aboutVisible)
                                      aboutVisible = !aboutVisible;
                                    if (projectsVisible)
                                      projectsVisible = !projectsVisible;
                                  });
                                },
                                child: Image.asset('assets/closeic.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Connect(),
                    ],
                  ),
                  height: MediaQuery.of(context).size.height * 0.75,
                  width: MediaQuery.of(context).size.width * 0.75,
                ))),
          ],
        ),
      ),
    );
  }
}
