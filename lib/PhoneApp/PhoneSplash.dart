import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermarch/PhoneApp/Bottombar.dart';
import 'package:fluttermarch/PhoneApp/Phoneapp.dart';

void main() {

  runApp(MaterialApp(theme: ThemeData(primarySwatch: Colors.purple,),debugShowCheckedModeBanner: false,
      home: PhoneSplash()));
}

class PhoneSplash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PhoneSplashState();
}


class PhoneSplashState extends State {
  @override
  void initState() {
    Timer(
        Duration(seconds: 1),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Bottombar())));
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
