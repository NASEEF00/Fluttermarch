import 'package:flutter/material.dart';

class GridviewBuilder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GridviewBuilderState();
}

class GridviewBuilderState extends State {
  List<Map> products = List.generate(50, (index) => {"id": index, "name": "Product $index"});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid Builder"),
        backgroundColor: Colors.white54,
      ),
      body: GridView.builder(
          itemCount: products.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (BuildContext obj, index) {
            return Card(
              child: Center(child: Text(products[index]["name"])),
            );
          }),
    );
  }
}
