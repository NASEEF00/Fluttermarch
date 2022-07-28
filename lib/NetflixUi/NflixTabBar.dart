import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_plus/icons_plus.dart';

import 'Screens.dart';

class NflixHome extends StatefulWidget {
  const NflixHome({Key? key}) : super(key: key);

  @override
  State<NflixHome> createState() => _NflixHomeState();
}

class _NflixHomeState extends State<NflixHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(extendBodyBehindAppBar: true,
        appBar: AppBar(title:TabBar(tabs: [
        BrandLogo(BrandLogos.netflix),
        const Text("Tv shows",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold,),),
        const Text("Movies",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),maxLines: 1,),
        const Text("My list",style:TextStyle(fontSize: 18,fontWeight:FontWeight.bold),maxLines: 1,),],
        indicatorWeight: 0.1,),
      backgroundColor: Colors.transparent,
      elevation:0,),
        body: const TabBarView(
          children: [
             NetflixScreen(),
             Center(child: Text("No content to display")),
             Center(child: Text("No content to display")),
             Center(child: Text("No content to display")),],
        ),
      ),
    );
  }
}
