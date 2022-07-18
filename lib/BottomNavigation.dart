import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => BottomnavState ();

}

int selectedindex = 0;

class BottomnavState extends State {
  List pages = <Widget>[
    const Icon(Icons.home, size:200),
    const Icon(Icons.settings, size:200),
    const Icon(Icons.chat, size:200),
    const Icon(Icons.call, size:200),

  ];

  void onItemTap(int index){
    setState((){
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom bar"),
      ),
      body: Center(child: pages.elementAt(selectedindex),
      ),

      bottomNavigationBar:
        BottomNavigationBar(
          backgroundColor: Colors.black26.withOpacity(0.4),
           type: BottomNavigationBarType.fixed ,
            items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
        BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chat"),
              BottomNavigationBarItem(icon: Icon(Icons.call),label: "Call"),
            ],
        currentIndex: selectedindex,
        onTap: onItemTap,
      ),
    );

}
}