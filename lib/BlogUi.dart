import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlogUi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BlogUiState();
}

class BlogUiState extends State {

  int selectedindex = 0;
  void onItemTap(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Center(
            child: Text(
              "Categories",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.circle_notifications,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              color: Colors.black,
              onPressed: () {},
            )
          ],
          bottom: const TabBar(
            tabs: [
              Text(
                "For You",
                style: TextStyle(color: Colors.black),
              ),
              Text("Design", style: TextStyle(color: Colors.black)),
              Text("Beauty", style: TextStyle(color: Colors.black)),
              Text("Education", style: TextStyle(color: Colors.black))
            ],
          ),
        ),
        body:  TabBarView(
          children: [(BlogList()),
            const Center(child: Text("Design")),
            const Center(child: Text("Beauty")),
            const Center(
              child: Text("Education"),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.grey), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.folder_outlined,
                  color: Colors.grey,
                ),
                label: 'Files'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.grey,
                ),
                label: 'Like'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
                label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: Colors.grey,
                ),
                label: 'Settings'),
          ],
          currentIndex: selectedindex,
          onTap: onItemTap,
        ),
      ),
    );
  }
}

class BlogList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BlogState();
}

class BlogState extends State {
  List content = [
    "How to seem like you always have \n your shot together",
    "Does dry is january actually improve \n your health",
    "You do hire a designer to make \n something. you hire them.",
    "Hey!! Hello World.......",
    "How to seem like you always have \n your shot together",
    "Does dry is january actually improve \n your health",
    "You do hire a designer to make \n something. you hire them.",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Stack(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.pink.withOpacity(0.3),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SizedBox(
                              height: 110,
                              width: 100,
                              child: Ink.image(
                                image: const NetworkImage(
                                  'https://cdn.pixabay.com/photo/2020/12/13/16/22/snow-5828736_960_720.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 13, left: 7),
                                child: Text(
                                  content[index],
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  children: const [
                                    CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage:
                                          AssetImage("assets/imgs/charone.jpg"),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 6.0,top: 5),
                                      child: Text(  "Jonhy Vino", style: TextStyle(fontSize: 16),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 100,top: 8),
                                      child: Text("4 min read",style: TextStyle(fontSize: 13),),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: content.length,
      ),
    );
  }
}
