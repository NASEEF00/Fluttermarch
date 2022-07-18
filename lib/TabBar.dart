import 'package:flutter/material.dart';

class TabBarrr extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TabBarState();
}

class TabBarState extends State {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Tab Bar"),
            bottom:const TabBar(tabs:[
              Text("chats"),
              Text("Status"),
              Text("Call"),]),
            backgroundColor: Colors.green.withOpacity(0.5),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text("Chat")),
              Center(child: Text("Status")),
              Center(child: Text("Call")),
            ],
          ) ,
        ),
    );
  }
}
