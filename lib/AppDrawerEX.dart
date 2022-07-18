import 'package:flutter/material.dart';
import 'package:fluttermarch/Contactbook.dart';
import 'package:fluttermarch/Homepage.dart';

class AppDrawerEx extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppDrawerExState();
}

class AppDrawerExState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("App Drawer"),
        ),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage(
                  "assets/imgs/car.jpeg"),
              fit: BoxFit.cover),
          ),
        ),
        drawer: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.transparent.withOpacity(0.3)),
          child: Drawer(
              child: ListView(
            children: [
               UserAccountsDrawerHeader(
                accountName: const Text("Afsqwsn"),
                accountEmail: const Text("jjfgj@gmail.com"),
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: AssetImage("assets/imgs/charfive.jpeg"),
                ),

                onDetailsPressed:(){
                  ListView(children: const [
                    ListTile(title: Text("Phone number"),
                      subtitle: Text("9090909090"),
                    )
                  ],);
                } ,
                decoration: BoxDecoration(color: Colors.blueAccent.withOpacity(0.2)),
              ),
              ListTile(
                title: const Text("Home page",
                style: TextStyle(color: Colors.white54),),
                trailing: const Icon(Icons.home,color: Colors.white54,),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactBook()),
                  );
                },
              ),
              ListTile(
                title: const Text("Settings",
                  style: TextStyle(color: Colors.white54),),
                trailing: const Icon(Icons.settings,color: Colors.white54),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("Details",
                  style: TextStyle(color: Colors.white54),),
                trailing: Icon(Icons.notification_important,color: Colors.white54),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(color: Colors.blueGrey,),
              ListTile(
                title: const Text("Close",
                  style: TextStyle(color: Colors.white54),),
                trailing: Icon(Icons.close,color: Colors.white54),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          ),
        ));
  }
}
