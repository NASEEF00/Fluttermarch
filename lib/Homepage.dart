import 'package:flutter/material.dart';
import 'package:fluttermarch/listviewbuilder.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("my app"),
      ),
      body: ListView(
        children: [
          const Text("List of fruits"),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Listwithbuider()));
            },
            child: const Card(
              child: ListTile(
                leading: Icon(Icons.star),
                trailing: Icon(Icons.arrow_circle_down),
                title: Text(
                  "Apple",
                ),
              ),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text("Mango"),
            ),
          ),
          const ListTile(
            title: Text("Orange"),
          ),
        ],
      ),
    );
  }
}
