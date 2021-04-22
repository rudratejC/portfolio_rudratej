import 'package:flutter/material.dart';

import 'dart:math';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_icons/flutter_icons.dart';

import 'package:url_launcher/url_launcher.dart';

class About2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      //color: Coolors.primaryColor,
      child: VStack([
        HeaderScreen(),
        //if (context.isMobile) IntroductionWidget().p16(),
        //MiddleScreen(),
        // FooterScreen(),
      ]).scrollVertical(),
    );
  }
}

class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final nameWidget = "Rudratej"
        .text
        .white
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();
    return SafeArea(
      child: VxBox(
              child: VStack([
        ZStack(
          [
            PictureWidget(),
            Row(
              children: [
                VStack([
                  if (context.isMobile) 50.heightBox else 10.heightBox,
                  CustomAppBar().shimmer(primaryColor: Vx.purple400),
                  30.heightBox,
                  nameWidget,
                  20.heightBox,
                  VxBox()
                      .color(Vx.purple400)
                      .size(60, 10)
                      .make()
                      .px4()
                      .shimmer(primaryColor: Vx.purple400),
                  30.heightBox,
                  SocialAccounts(),
                ]).pSymmetric(
                  h: context.percentWidth * 10,
                  v: 32,
                ),
                Expanded(
                  child: VxResponsive(
                    medium: IntroductionWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60),
                    large: IntroductionWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60),
                    fallback: const Offstage(),
                  ),
                )
              ],
            ).w(context.screenWidth)
          ],
        )
      ]))
          .size(context.screenWidth,
              MediaQuery.of(context).size.height * 0.75 - 20)
          .color(Color(0xff333645))
          .make(),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          " - Introduction".text.gray500.widest.sm.make(),
          10.heightBox,
          "@googledevexpert for Flutter, Firebase, Dart & Web.\nPublic Speaker, Blogger, Entrepreneur & YouTuber.\nFounder of MTechViral."
              .text
              .white
              .xl3
              .maxLines(5)
              .make()
              .w(context.isMobile
                  ? context.screenWidth
                  : context.percentWidth * 40),
          20.heightBox,
        ].vStack(),
      ],
      // crossAlignment: CrossAxisAlignment.center,
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 50,
      color: Vx.purple400,
    );
  }
}

class PictureWidget extends StatelessWidget {
  const PictureWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      origin: Offset(context.percentWidth * 2, 0),
      transform: Matrix4.rotationY(pi),
      child: Image.asset(
        "assets/pic.png",
        fit: BoxFit.cover,
        height: context.percentHeight * 60,
      ),
    );
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        AntDesign.twitter,
        color: Colors.white,
      ).mdClick(() {
        launch("https://twitter.com/imthepk");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.instagram,
        color: Colors.white,
      ).mdClick(() {
        launch("https://instagram.com/codepur_ka_superhero");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.youtube,
        color: Colors.white,
      ).mdClick(() {
        launch("https://youtube.com/mtechviral");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.github,
        color: Colors.white,
      ).mdClick(() {
        launch("https://github.com/iampawan");
      }).make()
    ].hStack();
  }
}

class MiddleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.purple700,
      child: Flex(
          direction: context.isMobile ? Axis.vertical : Axis.horizontal,
          children: [
            "All Creative works,\n"
                .richText
                .withTextSpanChildren(
                    ["Selected projects.".textSpan.yellow400.make()])
                .xl4
                .white
                .make(),
            20.widthBox,
            Expanded(
                child: VxSwiper(
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              items: [
                ProjectWidget(title: "Frontier Wallet"),
                ProjectWidget(title: "Click2Chat"),
                ProjectWidget(title: "QArt Fashion"),
                ProjectWidget(title: "ReadyO"),
                ProjectWidget(title: "Payoye"),
              ],
              height: 170,
              viewportFraction: context.isMobile ? 0.75 : 0.4,
              autoPlay: true,
              autoPlayAnimationDuration: 1.seconds,
            ))
          ]).p64().h(context.isMobile ? 500 : 300),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String title;

  const ProjectWidget({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return title.text.bold.white.xl.wide.center
        .make()
        .box
        .p8
        .roundedLg
        .neumorphic(color: Vx.purple700, elevation: 5, curve: VxCurve.flat)
        .alignCenter
        .square(200)
        .make()
        .p16();
  }
}
