import 'package:flutter/material.dart';

class Gridmenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GridmenuState();
}

class GridmenuState extends State {
  List MenuList = [
    Menuitem(Icons.verified_user, "My profile"),
    Menuitem(Icons.autorenew, "Book a cab"),
    Menuitem(Icons.ac_unit, 'Booking Schedule'),
    Menuitem(Icons.center_focus_strong, 'Track Your Cab'),
    Menuitem(Icons.question_answer, 'Help & Feedback'),
    Menuitem(Icons.phone, 'Call to Transport'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,mainAxisExtent: 200),
            itemBuilder: (Context, Position) {
              return Padding(
                padding: EdgeInsets.all(2),
                child: InkWell(
                  onTap: () {},
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100)),
                            child: Padding(
                              padding: EdgeInsets.all(9),
                              child: Icon(
                                MenuList[Position].icon,
                                size: 60,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(9),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              MenuList[Position].title,
                              textAlign: TextAlign.center,
                              style: TextStyle(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: MenuList.length,
          ),
        ),
      ),
    );
  }
}

class Menuitem {
  final IconData icon;
  final String title;
  Menuitem(this.icon, this.title);
}
