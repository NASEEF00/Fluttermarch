import 'package:flame_splash_screen/flame_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_splash_screen/flutter_splash_screen.dart';
import 'package:fluttermarch/EXampleSplash.dart';
import 'package:fluttermarch/Homepage.dart';
import 'package:fluttermarch/Loginpage.dart';
import 'package:fluttermarch/Splash.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MaterialApp(home: Splash111()));
}

class Splash111 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplasHstate();
}

class SplasHstate extends State {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: Loginpage(),
      image: Image.asset("assets/imgs/earth.png"),
      loadingText: Text("Welcome.."),
      imageBackground: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZkEU7Z7QKWBMa8c-ALQoZWjfKeGXEeNXsSw&usqp=CAU'),
    title: Text("EathApp"),
    );
  }
}
