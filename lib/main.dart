import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:html' as html;

void main() {
  runApp(MeApp());
}

class MeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore',
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          dividerTheme:
              DividerThemeData(color: Colors.grey, thickness: 0.3, space: 20)),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: screenSize.width / 4,
                height: screenSize.height,
                margin: EdgeInsets.all(50),
                child: Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: 8,
                      lightSource: LightSource.top,
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'images/me.jpg',
                      ),
                      NeumorphicText(
                        "Sohesh TS",
                        style: NeumorphicStyle(
                          depth: 4,
                          color: Colors.black,
                        ),
                        textStyle: NeumorphicTextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //Icon(Icons.),
                          NeumorphicText(
                            "Software Engineer",
                            style: NeumorphicStyle(
                              depth: 4,
                              color: Colors.black,
                            ),
                            textStyle: NeumorphicTextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.business_center),
                          NeumorphicText(
                            "Quest Global",
                            style: NeumorphicStyle(
                              depth: 4,
                              color: Colors.black,
                            ),
                            textStyle: NeumorphicTextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.pin_drop),
                          NeumorphicText(
                            "Technopark, Trivandrum",
                            style: NeumorphicStyle(
                              depth: 4,
                              color: Colors.black,
                            ),
                            textStyle: NeumorphicTextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                              icon: FaIcon(FontAwesomeIcons.envelope),
                              onPressed: () {
                                html.window.location.href =
                                    "mailto:soheshts@gmail.com";
                                print("Pressed mail button");
                              }),
                          IconButton(
                              icon: FaIcon(FontAwesomeIcons.github),
                              onPressed: () {
                                html.window.location.href =
                                    "https://github.com/soheshts";
                                print("Pressed github");
                              }),
                          IconButton(
                              icon: FaIcon(FontAwesomeIcons.twitter),
                              onPressed: () {
                                html.window.location.href =
                                    "https://twitter.com/soheshts";
                                print("Pressed");
                              }),
                          IconButton(
                              icon: FaIcon(FontAwesomeIcons.linkedin),
                              onPressed: () {
                                html.window.location.href =
                                    "https://www.linkedin.com/in/soheshts";
                                print("Pressed");
                              })
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: screenSize.width / 2,
                height: screenSize.height,
                margin: EdgeInsets.fromLTRB(0, 50, 50, 50),
                child: Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: 8,
                      lightSource: LightSource.top,
                      color: Colors.white),
                  child: Column(
                    children: [
                      NeumorphicText(
                        "I love flutter",
                        style: NeumorphicStyle(
                          depth: 4, //customize depth here
                          color: Colors.black, //customize color here
                        ),
                        textStyle: NeumorphicTextStyle(
                          fontSize: 30, //customize size here
                          // AND others usual text style properties (fontFamily, fontWeight, ...)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
