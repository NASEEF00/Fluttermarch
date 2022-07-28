import 'package:flutter/material.dart';

import 'NflixTabBar.dart';

void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomNavBar(),
  ));
}
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedindex = 0;

  List pages = [
    const NflixHome(),
    const Icon(Icons.search, size:200),
    const Icon(Icons.computer, size:200),
    const Icon(Icons.download, size:200),
    const Icon(Icons.menu, size:200),


  ];

  void onItemTap(int index){
    setState((){
      selectedindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: pages.elementAt(selectedindex),) ,
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.black,
        type:BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.screenshot_monitor_sharp),label: 'Coming soon'),
          BottomNavigationBarItem(icon: Icon(Icons.download),label: 'Downloads'),
          BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'More'),
        ],
      currentIndex: selectedindex,
        onTap: onItemTap ,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,


      ),
    );
  }
}
