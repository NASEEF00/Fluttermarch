import 'package:flutter/material.dart';

class GradiantEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(decoration: BoxDecoration(
      gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.yellow,
            Colors.redAccent,
            Colors.black,
            Colors.pink,
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft),
    ),));
  }
}
