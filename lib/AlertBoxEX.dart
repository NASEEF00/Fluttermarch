import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class AlertBoxEx extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AlertBoxExState();
}

class AlertBoxExState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert box"),
        actions: [
          PopupMenuButton(itemBuilder: (context){
            return[
              const PopupMenuItem(child: ListTile(title: Text("Copy"),leading: Icon(Icons.copy),)),
              const PopupMenuItem(child: ListTile(title: Text("Paste"),leading: Icon(Icons.paste),)),
              const PopupMenuItem(child: ListTile(title: Text("Cut"),leading: Icon(Icons.cut),)),
              const PopupMenuItem(child: ListTile(title: Text("Close"),leading: Icon(Icons.close),)),
            ];
          })
        ],

      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Alert(
                  context: context,
                  type: AlertType.warning,
                  title: "RFLUTTER ALERT",
                  desc: "Flutter is more awesome with RFlutter Alert.",
                  buttons: [
                    DialogButton(
                      onPressed: () => Navigator.pop(context),
                      color: const Color.fromRGBO(0, 179, 134, 1.0),
                      child: const Text(
                        "FLAT",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    DialogButton(
                      onPressed: () => Navigator.pop(context),
                      gradient: const LinearGradient(colors: [
                        Color.fromRGBO(116, 116, 191, 1.0),
                        Color.fromRGBO(52, 138, 199, 1.0)
                      ]),
                      child: const Text(
                        "GRADIENT",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  ],
                ).show();
              },
              child: const Text("Click here"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ElevatedButton(
                  onPressed: () {
                    Alert(
                            context: context,
                            title: "RFLUTTER",
                            desc: "Flutter is awesome.")
                        .show();
                  },
                  child: const Text("click here")),
            ),

          ],
        ),
      ),
    );
  }
}
