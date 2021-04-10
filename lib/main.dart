import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:html' as html;
import 'package:easy_web_view/easy_web_view.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class Post {
  final String title;
  final String date;
  final String file;

  Post({@required this.title, @required this.date, @required this.file});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      title: json['title'],
      date: json['date'],
      file: json['file'],
    );
  }
}

void main() {
  runApp(MeApp());
}

class MeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sohesh TS',
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
  int _selectedIndex = 0;
  static List<Post> posts = [];

  // Fetch content from the json file
  static Future<List<Post>> readJson() async {
    final String response =
        await rootBundle.loadString('assets/json/blog_pages.json');
    print("Response: " + response);
    List jsonResponse = json.decode(response);
    posts = jsonResponse.map((post) => Post.fromJson(post)).toList();
    print(posts[0].title);
    return posts;
  }

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Container(
      margin: EdgeInsets.all(20),
      child: Column(children: [
        Row(
          children: [
            NeumorphicText(
              "Hello there,",
              style: NeumorphicStyle(
                depth: 8,
                color: Colors.black,
              ),
              textStyle: NeumorphicTextStyle(
                fontSize: 40,
              ),
            ),
          ],
        ),
        Row(
          children: [
            NeumorphicText(
              "I am Sohesh",
              style: NeumorphicStyle(
                depth: 4,
                color: Colors.black,
              ),
              textStyle: NeumorphicTextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
        Row(
          children: [
            NeumorphicText(
              "A Java Developer from Kerala in India.",
              style: NeumorphicStyle(
                depth: 4,
                color: Colors.black,
              ),
              textStyle: NeumorphicTextStyle(
                fontSize: 30,
              ),
            ),
          ],
        )
      ]),
    ),
    Container(
      child: Column(children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(20),
                height: 100,
                child: Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: 2,
                      lightSource: LightSource.top,
                      color: Colors.grey[100]),
                  child: Center(child: Text("Java")),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(20),
                height: 100,
                child: Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: 2,
                      lightSource: LightSource.top,
                      color: Colors.grey[100]),
                  child: Center(child: Text("Spring")),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(20),
                height: 100,
                child: Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: 2,
                      lightSource: LightSource.top,
                      color: Colors.grey[100]),
                  child: Center(child: Text("Spring Boot")),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(20),
                height: 100,
                child: Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: 2,
                      lightSource: LightSource.top,
                      color: Colors.grey[100]),
                  child: Center(child: Text("Microservices")),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(20),
                height: 100,
                child: Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: 2,
                      lightSource: LightSource.top,
                      color: Colors.grey[100]),
                  child: Center(child: Text("Docker")),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(20),
                height: 100,
                child: Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: 2,
                      lightSource: LightSource.top,
                      color: Colors.grey[100]),
                  child: Center(child: Text("Web Services")),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(20),
                height: 100,
                child: Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: 2,
                      lightSource: LightSource.top,
                      color: Colors.grey[100]),
                  child: Center(child: Text("MS SQL")),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(20),
                height: 100,
                child: Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: 2,
                      lightSource: LightSource.top,
                      color: Colors.grey[100]),
                  child: Center(child: Text("HTML")),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(20),
                height: 100,
                child: Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: 2,
                      lightSource: LightSource.top,
                      color: Colors.grey[100]),
                  child: Center(child: Text("JavaScript")),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(20),
                height: 100,
                child: Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: 2,
                      lightSource: LightSource.top,
                      color: Colors.grey[100]),
                  child: Center(child: Text("JQuery")),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(20),
                height: 100,
                child: Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: 2,
                      lightSource: LightSource.top,
                      color: Colors.grey[100]),
                  child: Center(child: Text("Flutter")),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(20),
                height: 100,
                child: Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: 2,
                      lightSource: LightSource.top,
                      color: Colors.grey[100]),
                  child: Center(child: Text("Rabbit MQ")),
                ),
              ),
            ),
          ],
        ),
      ]),
    ),
    FutureBuilder(
        future: readJson(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Expanded(
              child: ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  Post post = snapshot.data[index];
                  print(snapshot.data[index]);
                  print(post.title);
                  return InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                                child: Scaffold(
                              appBar: AppBar(
                                backgroundColor: Colors.blueGrey,
                                title: Text(post.title),
                                centerTitle: true,
                              ),
                              body: EasyWebView(
                                src: 'assets/assets/pages/' + post.file,
                                isHtml: false, // Use Html syntax
                                isMarkdown: false, // Use markdown syntax
                                convertToWidgets:
                                    false, // Try to convert to flutter widgets
                                onLoaded: () {
                                  print('Loaded: google');
                                },
                              ),
                            ));
                          });
                    },
                    child: Card(
                      child: ListTile(
                        leading: FaIcon(FontAwesomeIcons.blog),
                        title: Text(post.title),
                        subtitle: Text(post.date),
                        focusColor: Colors.grey,
                        hoverColor: Colors.grey,
                      ),
                    ),
                  );
                },
              ),
            );
          } else if (snapshot.hasError) {
            return Text("Error occured");
          }
          return CircularProgressIndicator();
        }),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
                        'assets/images/me.jpg',
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
                      BottomNavigationBar(
                          items: const <BottomNavigationBarItem>[
                            BottomNavigationBarItem(
                              icon: Icon(Icons.home),
                              label: 'Home',
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(Icons.business),
                              label: 'Skills',
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(Icons.school),
                              label: 'Blog',
                            ),
                          ],
                          currentIndex: _selectedIndex,
                          selectedItemColor: Colors.amber[800],
                          onTap: _onItemTapped),
                      Container(
                        child: _widgetOptions.elementAt(_selectedIndex),
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
