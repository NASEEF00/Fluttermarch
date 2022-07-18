import 'package:flutter/material.dart';

class ContactBook extends StatelessWidget {
  List images = [
    "assets/imgs/charthree.jpeg",
    "assets/imgs/chartwo.jpeg",
    "assets/imgs/charthree.jpeg",
    "assets/imgs/charfive.jpeg",
    "assets/imgs/charsix.jpeg",
    "assets/imgs/chartwo.jpeg",
    "assets/imgs/charthree.jpeg",
    "assets/imgs/charfive.jpeg",
  ];
  List names = [
    "Naseef",
    "Nissam",
    "Hrithik",
    "Abin",
    "Fahiz",
    "Raju",
    "Amith",
    "Jake"
  ];
  List numbers = [
    "9990987656",
    "9911112321",
    "9123455434",
    "9123455434",
    "9123455434",
    "9123455434",
    "9123455434",
    "9123455434"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage(images[index])),
              title: Text(names[index]),
              subtitle: Text(numbers[index]),
              trailing: Wrap(
                spacing: 7.5,
                children: const [Icon(Icons.phone), Icon(Icons.message)],
              ),
            ),
          );
        },
        itemCount: images.length,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10),
      ),
    );
  }
}
