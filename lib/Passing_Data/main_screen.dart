import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dummy_data.dart';

void main(){
  runApp(MyApp());
}

class MyApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    home: ProductListScreen(),

      routes: {
        "single-product": (context) =>  SingleProductScreen(),
      },
    );
  }
}


class SingleProductScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final productId = ModalRoute.of(context)?.settings.arguments;

    // find the product that matches the id passed from the ProductListScreen
    final product = dummyProducts.firstWhere((e) => e["id"] == productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(product["name"]),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(children: [

          Text(
            "Name: ${product['name']}",
            style: const TextStyle(fontSize: 30, color: Colors.purple),
          ),
          Text(
            "Price: ${product['price'].toString()}",
            style: const TextStyle(fontSize: 20, color: Colors.red),
          ),
          Text("Description ${product['description']}"),
        ]),
      ),
    );
  }
}


class ProductListScreen extends StatelessWidget {

  void _goToSingle(context, productId) {
    Navigator.of(context).pushNamed("single-product", arguments: productId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List Screen"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: dummyProducts.map((singleProduct) {
          return TextButton(
              onPressed: () => _goToSingle(context, singleProduct["id"]),
              child: Text(singleProduct["name"]));
        }).toList(),
      ),
    );
  }
}
