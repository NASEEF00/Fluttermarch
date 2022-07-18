import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// material appil routes il define chayyanam



class NamedRoutesEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Named Routes example"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {Navigator.of(context).pushNamed('Contacts');},
          child: Text("Click here"),
        ),
      ),
    );
  }
}
