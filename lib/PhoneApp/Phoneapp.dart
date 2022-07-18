import 'package:flutter/material.dart';

class Phonecalltab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PhoneCallState();
}

class PhoneCallState extends State {

  List<Map> Phonelist =
      List.generate(25, (index) => {"id": index, "name": "Call ${index + 1}"});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Call App")),
          bottom: const TabBar(tabs: [
            Text("Incoming"),
            Text("Outgoing"),
            Text("Missed"),
          ]),
          backgroundColor: Colors.black.withOpacity(0.5),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemBuilder: (BuildContext, index) {
                return Card(
                    child: ListTile(
                  title: Text(Phonelist[index]["name"]),
                  trailing: const Icon(Icons.phone_callback),
                ));
              },
              itemCount: Phonelist.length,
              padding: const EdgeInsets.only(left: 10, right: 10),
            ),
            ListView.builder(
              itemBuilder: (BuildContext, index) {
                return Card(
                    child: ListTile(title: Text(Phonelist[index]["name"]),
                    trailing: const Icon(Icons.phone_forwarded_rounded),),);
              },
              itemCount: Phonelist.length,
              padding: const EdgeInsets.only(left: 10, right: 10),
            ),
      ListView.builder(
        itemBuilder: (BuildContext, index) {
          return Card(
            child: ListTile(title: Text(Phonelist[index]["name"]),
              trailing: const Icon(Icons.phone_missed_rounded),),);
        },
        itemCount: Phonelist.length,
        padding: const EdgeInsets.only(left: 10, right: 10),
      ),
          ],
        ),
        
      ),
    );
  }
}
