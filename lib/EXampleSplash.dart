import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: SplashScreen00()));
}

class SplashScreen00 extends StatelessWidget {
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
