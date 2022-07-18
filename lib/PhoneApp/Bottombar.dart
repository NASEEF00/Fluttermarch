import 'package:flutter/material.dart';
import 'package:fluttermarch/PhoneApp/Phoneapp.dart';

import '../Contactbook.dart';

class Bottombar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => BottombarState ();

}

int selectedindex = 0;

class BottombarState extends State {
  List pages = [
    Phonecalltab(),
    ContactBook(),
    const Center(child: Icon(Icons.call, size:200)),
  ];

  void onItemTap(int index){
    setState((){
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        child: pages.elementAt(selectedindex),
      ),

      bottomNavigationBar:
      BottomNavigationBar(
        backgroundColor: Colors.black26.withOpacity(0.4),
        type: BottomNavigationBarType.fixed ,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.call),label: 'Phone',),
          BottomNavigationBarItem(icon: Icon(Icons.contact_phone_rounded),label: "Contacts"),
          BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chat"),
        ],
        currentIndex: selectedindex,
        onTap: onItemTap,
      ),
    );

  }
}