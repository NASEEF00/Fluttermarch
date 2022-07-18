import 'package:flutter/material.dart';

class AppBarSearch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppBaerSearchState();
}

class AppBaerSearchState extends State {
  Widget appbartitle = Text("Search in AppBar");
  Icon myicon = Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appbartitle,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  if (myicon.icon == Icons.search) {
                    myicon = Icon(Icons.close);
                    appbartitle = const TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                        Icons.search_rounded,
                        color: Colors.white,
                      ),
                        hintText: "Search"
                      ),
                    );
                  }
                  else{
                    myicon = Icon(Icons.search);
                    appbartitle = Text("Search in AppBar");
                  }
                });
              },
              icon: myicon),
        ],
      ),
    );
  }
}
