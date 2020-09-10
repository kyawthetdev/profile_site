import 'package:flutter/material.dart';

// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

//import 'dart:html' as html;
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => Profile(),
    },
  ));
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
              cc
        )),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 80),
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 52,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('images/kyawthetnaing.jpg'),
                        ),
                      ),
                      Text(
                        'KyawThetNaing',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontFamily: 'nameFont'),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'FlutterDeveloper',
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 2.0,
                            fontSize: 25.0,
                            fontFamily: 'flutterFont'),
                      ),
                      SizedBox(
                        height: 20,
                        width: 200.0,
                        child: Divider(
                          color: Colors.grey[400],
                          thickness: 1.0,
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        child: ListTile(
                          onTap: () {},
                          leading: Icon(
                            Icons.phone,
                            color: Colors.blue,
                          ),
                          title: Text(
                            '+959 781-539-559',
                            style: TextStyle(
                                fontFamily: 'flutterFont',
                                color: Colors.blue,
                                fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        child: ListTile(
                          onTap: () {},
                          leading: Icon(
                            Icons.email,
                            color: Colors.blue,
                          ),
                          title: Text(
                            'kyawthet192016@gmail.com',
                            style: TextStyle(
                                fontFamily: 'flutterFont',
                                color: Colors.blue,
                                fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                                child: FlatButton(
                                    child: SizedBox(
                                        height: 55,
                                        child:
                                            Image.asset('images/github.png')),
                                    onPressed: () {
                                      js.context.callMethod("open",
                                          ["https://github.com/kyawthetdev"]);
                                    })),
                            Expanded(
                              child: FlatButton(
                                  child: SizedBox(
                                      height: 55,
                                      child:
                                          Image.asset('images/facebook.png')),
                                  onPressed: () {
                                    js.context.callMethod("open", [
                                      "https://www.facebook.com/kyawthet.192016"
                                    ]);
                                  }),
                            ),
                            Expanded(
                                child: FlatButton(
                                    child: SizedBox(
                                        height: 55,
                                        child:
                                            Image.asset('images/twitter.png')),
                                    onPressed: () {
                                      //html.window.open("https://github.com/kyawthetdev",'name');
                                      js.context.callMethod("open", [
                                        "https://twitter.com/KyawThe45271369?s=09"
                                      ]);
                                    })),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Text(
              'KYAWTHETNAING',
              style: TextStyle(
                  fontFamily: 'flutterFont',
                  letterSpacing: 1,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
