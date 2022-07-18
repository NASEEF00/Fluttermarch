import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fluttermarch/BottomNavigation.dart';

class QuiltedPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => QuiltedState();
}

class QuiltedState extends State {
  bool _isTap = false;
  // Color _iconColor = Colors.white;

  final List<String> imageList = [
    'https://cdn.pixabay.com/photo/2019/03/15/09/49/girl-4056684_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/15/16/25/clock-5834193__340.jpg',
    'https://cdn.pixabay.com/photo/2020/09/18/19/31/laptop-5582775_960_720.jpg',
    'https://media.istockphoto.com/photos/woman-kayaking-in-fjord-in-norway-picture-id1059380230?b=1&k=6&m=1059380230&s=170667a&w=0&h=kA_A_XrhZJjw2bo5jIJ7089-VktFK0h0I4OWDqaac0c=',
    'https://cdn.pixabay.com/photo/2019/11/05/00/53/cellular-4602489_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/02/12/10/29/christmas-2059698_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/01/29/17/09/snowboard-4803050_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/02/06/20/01/university-library-4825366_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/11/22/17/28/cat-5767334_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/13/16/22/snow-5828736_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/09/09/27/women-5816861_960_720.jpg',
  ];
  final List<String> picture = [
    "assets/imgs/charthree.jpeg",
    "assets/imgs/chartwo.jpeg",
    "assets/imgs/charthree.jpeg",
    "assets/imgs/charfive.jpeg",
    "assets/imgs/charsix.jpeg",
    "assets/imgs/chartwo.jpeg",
    "assets/imgs/charthree.jpeg",
    "assets/imgs/charfive.jpeg",
    "assets/imgs/charthree.jpeg",
    "assets/imgs/chartwo.jpeg",
    "assets/imgs/charthree.jpeg",
  ];
  List names = [
    "Naseef",
    "Nissam",
    "Hrithik",
    "Abin",
    "Fahiz",
    "Raju",
    "Amith",
    "Jake",
    "Raju",
    "Amith",
    "Jake"
  ];


  static const pattern = [
    QuiltedGridTile(2, 2),
    QuiltedGridTile(3, 2),
    QuiltedGridTile(3, 2),
    QuiltedGridTile(2, 2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Text(
            "Staggered Grid View",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
      body: SafeArea(
        child: GridView.custom(
          gridDelegate: SliverQuiltedGridDelegate(
            crossAxisCount: 4,
            mainAxisSpacing: 3,
            crossAxisSpacing: 4,
            repeatPattern: QuiltedGridRepeatPattern.inverted,
            pattern: pattern,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) {
              // final tile = pattern[index % pattern.length];
              return Card(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: NetworkImage(
                        imageList[index],
                      ),
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () {},
                      ),
                    ),
                    Card(
                      color: Colors.transparent.withAlpha(100),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 15.0,
                          backgroundImage: AssetImage(
                            picture[index],
                          ),
                        ),
                        title: Text(
                          names[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        subtitle: const Text(
                          "01/01/2022",
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.grey,
                          ),
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.thumb_up,color: _isTap?Colors.red:Colors.white),
                          iconSize: 20,
                          splashRadius: 15,
                          splashColor: Colors.teal.withOpacity(0.2),
                          onPressed: () {
                            setState(() {
                              (_isTap =!_isTap);
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            childCount: imageList.length,
          ),
        ),
      ),
    );
  }
}
