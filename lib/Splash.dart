import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttermarch/AlertBoxEX.dart';
import 'package:fluttermarch/AnimatedRadialButtonEx.dart';
import 'package:fluttermarch/AnimationEx.dart';
import 'package:fluttermarch/AppDrawerEX.dart';
import 'package:fluttermarch/BlogUi.dart';
import 'package:fluttermarch/BottomNavigation.dart';
import 'package:fluttermarch/Contactbook.dart';
import 'package:fluttermarch/EXampleSplash.dart';
import 'package:fluttermarch/ExpandedEx.dart';
import 'package:fluttermarch/GradiantEx.dart';
import 'package:fluttermarch/Gridbuilder.dart';
import 'package:fluttermarch/Gridmenu.dart';
import 'package:fluttermarch/Gridview.dart';
import 'package:fluttermarch/Homepage.dart';
import 'package:fluttermarch/LoginUsingSH.dart';
import 'package:fluttermarch/Loginpage.dart';
import 'package:fluttermarch/NamedRoutesEx.dart';
import 'package:fluttermarch/PhoneApp/AppBarWithSearch.dart';
import 'package:fluttermarch/RegistrationPage.dart';
import 'package:fluttermarch/StackExample.dart';
import 'package:fluttermarch/StackLoginEX.dart';
import 'package:fluttermarch/StaggeredGridEx.dart';
import 'package:fluttermarch/TabBar.dart';
import 'package:fluttermarch/Table.dart';
import 'package:fluttermarch/listviewbuilder.dart';

import 'HotelHomeUi.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: Splashscreen22(),
    routes: {
        'Contacts': (BuildContext ctx)=> ContactBook(),
  },));
}

class Splashscreen22 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State {
  @override
  void initState() {
    Timer(
        Duration(seconds: 1),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => AlertBoxEx())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZkEU7Z7QKWBMa8c-ALQoZWjfKeGXEeNXsSw&usqp=CAU'),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage("assets/imgs/earth.png"),
                height: 150,
                width: 150,
              ),
              Text("My text",
                  style: TextStyle(fontSize: 20, color: Colors.teal))
            ],
          ),
        ),
      ),
    );
  }
}
