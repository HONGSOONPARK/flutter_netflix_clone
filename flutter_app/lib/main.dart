import 'package:flutter/material.dart';
import 'package:flutter_app/screen/home_screen.dart';
import 'package:flutter_app/screen/like_screen.dart';
import 'package:flutter_app/screen/more_screen.dart';
import 'package:flutter_app/screen/search_screen.dart';
import 'package:flutter_app/widget/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TabController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HongFlix',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Colors.white,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              HomeScreen(),
              SearchScreen(),
              LikeScreen(),
              MoreScreen(),
            ], // <Widget>[]
          ), // TabBarView
          bottomNavigationBar: Bottom(),
        ), // Scaffold
      ), // DefaultTabController
    );
  }
}
