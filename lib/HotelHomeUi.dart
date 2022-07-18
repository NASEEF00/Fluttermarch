import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HotelHomeUi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HotelState();
}

class HotelState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width * 1.0,
              color: Colors.cyan,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Text(
                      "Type Your Location",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width * .9,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: "Eranakulam, Kakkanad",
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                  height: 110,
                  width: MediaQuery.of(context).size.width * .25,
                  child: Card(
                    color: Colors.pink,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.hotel,
                          color: Colors.white,
                        ),
                        Text(
                          "Hotel",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 110,
                  width: MediaQuery.of(context).size.width * .25,
                  child: Card(
                    color: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.restaurant,
                          color: Colors.white,
                        ),
                        Text(
                          "Restaurant",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 110,
                  width: MediaQuery.of(context).size.width * .25,
                  child: Card(
                    color: Colors.amber,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.local_cafe,
                          color: Colors.white,
                        ),
                        Text(
                          "Cafe",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 1.0,
              height: MediaQuery.of(context).size.height * 1.0,
              child: Hotels(),
            )
          ],
        ),
      ),
      drawer: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.transparent.withOpacity(0.6)),
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text("Jett"),
                accountEmail: const Text("jjfgj@gmail.com"),
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: AssetImage("assets/imgs/jett.jpg"),
                ),
                decoration: BoxDecoration(color: Colors.cyan.withOpacity(0.5)),
              ),
              ListTile(
                title: const Text(
                  "Home page",
                  style: TextStyle(color: Colors.white54),
                ),
                trailing: const Icon(
                  Icons.home,
                  color: Colors.white54,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text(
                  "Settings",
                  style: TextStyle(color: Colors.white54),
                ),
                trailing: const Icon(Icons.settings, color: Colors.white54),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text(
                  "Details",
                  style: TextStyle(color: Colors.white54),
                ),
                trailing: const Icon(Icons.notification_important,
                    color: Colors.white54),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const Divider(
                color: Colors.blueGrey,
              ),
              ListTile(
                title: const Text(
                  "Close",
                  style: TextStyle(color: Colors.white54),
                ),
                trailing: const Icon(Icons.close, color: Colors.white54),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Hotels extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HotelsState();
}

class HotelsState extends State {
  final List<String> imagesList = [
    'https://cdn.pixabay.com/photo/2016/11/14/02/28/apartment-1822409_960_720.jpg',
    'https://cdn.pixabay.com/photo/2016/03/28/09/34/bedroom-1285156__480.jpg',
    'https://cdn.pixabay.com/photo/2016/10/18/09/02/hotel-1749602_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/10/18/09/16/bedroom-5664221__340.jpg',
    'https://cdn.pixabay.com/photo/2018/06/14/21/15/bedroom-3475656__340.jpg',
    'https://cdn.pixabay.com/photo/2016/06/10/01/05/hotel-room-1447201_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/04/28/22/16/room-2269594_960_720.jpg',
    'https://cdn.pixabay.com/photo/2014/10/16/08/39/bedroom-490779__340.jpg',
    'https://cdn.pixabay.com/photo/2017/01/14/12/48/hotel-1979406__340.jpg',
    'https://cdn.pixabay.com/photo/2014/05/21/14/56/bedroom-349698__340.jpg',
    'https://cdn.pixabay.com/photo/2014/05/21/14/56/bedroom-349699__340.jpg',
  ];
  final List<double> ratinglist = [
    5.0,
    3.5,
    4.0,
    2.0,
    4.5,
    2.5,
    5.0,
    3.5,
    4.0,
    2.0,
    4.5,
    2.5
  ];

  final List<String> desclist = [
    "Luxury Room",
    " Heaven Restaurant",
    "Premium Room",
    "Five Star Hotel",
    "Well Maintained Room",
    "Best Restaurant",
    "Luxury Room",
    " Heaven Restaurant",
    "Premium Room",
    "Five Star Hotel",
    "Well Maintained Room",
    "Best Restaurant"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 18),
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .9,
                              height: MediaQuery.of(context).size.height * .35,
                              child: Ink.image(
                                image: NetworkImage(imagesList[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              right: 1,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                                right: 5,
                                bottom: 8,
                                child: Container(height: 20,width: 30,alignment: Alignment.center,
                                  color: Colors.white.withOpacity(0.8),
                                  child: const Text("\$40"),
                                ))
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text(
                              desclist[index],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            const Text(
                              "Ernakulam,Kakkanad",
                              style: TextStyle(fontSize: 14),
                            ),
                            RatingBar.builder(
                                itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Colors.green,
                                    ),
                                initialRating: ratinglist[index],
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 25,
                                ignoreGestures: true,
                                glowColor: Colors.green[50],
                                onRatingUpdate: (rating) {
                                  print(rating);
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: imagesList.length,
          ),
        ),
      ),
    );
  }
}
