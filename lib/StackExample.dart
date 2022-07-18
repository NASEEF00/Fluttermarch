import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Demo"),
      ),
      body: Stack(
        children: [
          Ink.image(
            image: const NetworkImage(
                'https://cdn.pixabay.com/photo/2020/12/15/16/25/clock-5834193__340.jpg'),
            fit: BoxFit.cover,
          ),
          //   Container(
          //   color: Colors.black,
          // ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
              color: Colors.purple,
            ),
          ),
          Positioned(
            bottom: 140,
            left: 130,
            child: Container(
              height: 50,
              width: 250,
              color: Colors.teal,
            ),
          ),
          Positioned(
            right: 100,
            top: 208,
            child: Container(
              height: 150,
              width: 100,
              color: Colors.redAccent,
            ),
          ),
          Positioned(
            right: 290,
            top: 208,
            child: Container(
              height: 150,
              width: 100,
              color: Colors.lightBlueAccent,
            ),
          ),
        ],
      ),
    );
  }
}
