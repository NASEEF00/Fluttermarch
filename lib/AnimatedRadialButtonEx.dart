import 'package:animated_radial_menu/animated_radial_menu.dart';
import 'package:flutter/material.dart';
import 'package:fluttermarch/Contactbook.dart';

class AnimRadial extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AnimRadialState();
}

class AnimRadialState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Radial button"),
      ),
      body: Stack(children: [
        RadialMenu(
          centerButtonAlignment: const Alignment(0.2, 0.3),
          children: [
            RadialButton(
                icon: const Icon(Icons.ac_unit),
                buttonColor: Colors.teal,
                onPress: () {}),
            RadialButton(
                icon: const Icon(Icons.camera_alt),
                buttonColor: Colors.green,
                onPress: () {}),
            RadialButton(
                icon: const Icon(Icons.map),
                buttonColor: Colors.orange,
                onPress: () {}),
            RadialButton(
                icon: const Icon(Icons.access_alarm),
                buttonColor: Colors.indigo,
                onPress: () {}),
            RadialButton(
                icon: const Icon(Icons.watch),
                buttonColor: Colors.pink,
                onPress: () {}),
            RadialButton(
                icon: const Icon(Icons.settings),
                buttonColor: Colors.blue,
                onPress: () {}),
            RadialButton(
                icon: const Icon(Icons.mail_outline),
                buttonColor: Colors.yellow,
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContactBook()));
                }),
            RadialButton(
                icon: const Icon(Icons.logout),
                buttonColor: Colors.red,
                onPress: () {}),
          ],
        ),
      ]),
    );
  }
}
