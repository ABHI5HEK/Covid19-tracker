import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
  // This widget is the root of your application.

}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Covid Tracker",
        home: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                title: Text("Covid Case"),
                backgroundColor: Colors.red[800],
              ),
              body: Container(
                child: WebView(
                  initialUrl: "https://www.covid19india.org/",
                ),
                height: double.infinity,
                width: double.infinity,
              )),
        ));
  }
}
