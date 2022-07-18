import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandedEx extends StatefulWidget {
  @override
  State<StatefulWidget> createState()=> ExpandedState();

}

class ExpandedState extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // Expanded(
            //   child: Container(
            //     width: 100,
            //     color: Colors.cyan,
            //   ),
            // ),
            // Expanded(
            //   child: Container(
            //     width: 100,
            //     color: Colors.green,
            //   ),
            // ),
            // Expanded(
            //   child: Container(
            //     width: 100,
            //     color: Colors.amber,
            //   ),
            // ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: 1500,
                  width: 300,
                  color: Colors.black26,
                  child: Column(children: [Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(height: 100,color: Colors.red,),
                  ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 100,color: Colors.greenAccent,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 100,color: Colors.amber,),
                    )
                    ,Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 100,color: Colors.black,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 100,color: Colors.pink,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 100,color: Colors.cyan,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 100,color: Colors.brown,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 100,color: Colors.white,),
                    ),
                  ],),),
              ),
            )
          ],
        ),
      ),
    );
  }
}