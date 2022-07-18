import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listwithbuider extends StatelessWidget{

  List images = ["assets/imgs/earth.png","assets/imgs/google.png","assets/imgs/origami.png"];
  List names = ["Earth","Google","Bird"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (BuildContext,index){
          return Card(
            child: ListTile(
              leading: Image.asset(images[index]),
              title: Text(names[index]),
            ),
          );
        },itemCount: images.length,
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(10),
        ),

    );
  }

}