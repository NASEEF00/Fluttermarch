import 'package:flutter/material.dart';

class GridviewEx extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => GridviewExState();
  }



class GridviewExState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Grid View"),
          backgroundColor: Colors.blueGrey,),
        body: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children:  [
          Card(child: Column(
            children:const [
              Image(image: AssetImage("assets/imgs/origami.png",),height: 100,
                  ),
              Text("Hello")
            ],
          )),
          const Card(child: Image(image: AssetImage("assets/imgs/origami.png"))),
          const Card(child: Image(image: AssetImage("assets/imgs/origami.png"))),
          const Card(child: Image(image: AssetImage("assets/imgs/origami.png"))),
          const Card(child: Image(image: AssetImage("assets/imgs/origami.png"))),
          const Card(child: Image(image: AssetImage("assets/imgs/origami.png"))),
          const Card(child: Image(image: AssetImage("assets/imgs/origami.png")))
        ],
        ),
    );
  }
}