import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimationEx extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AnimationState();
}

class AnimationState extends State with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  @override
  initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animationController.repeat();
    super.initState();
  }
   @override
  void dispose(){
    animationController.dispose();
    super.dispose();
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Example"),
      ),
      body: Center(
          child: GestureDetector(
        onTap: () {
          if(animationController.isAnimating){
          animationController.stop();
          }else{animationController.repeat();}
        },
        child: RotationTransition(
            turns: animationController,
            alignment: Alignment.center,
            child: Image.asset("assets/imgs/earth.png")),
      )),
    );
  }
}
