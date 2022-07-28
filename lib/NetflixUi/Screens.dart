import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NetflixScreen extends StatefulWidget {
  const NetflixScreen({Key? key}) : super(key: key);

  @override
  State<NetflixScreen> createState() => _NetflixScreenState();
}

class _NetflixScreenState extends State<NetflixScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.grey[850],
        child: const Icon(Icons.cast),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * 0.62,
                    child: ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return const LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.center,
                          colors: [Colors.black, Colors.transparent],
                        ).createShader(bounds);
                      },
                      blendMode: BlendMode.darken,
                      child: Image.asset(
                        "assets/imgs/sintel.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.12,
                    width: MediaQuery.of(context).size.width * 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "SINTEL",
                          style: GoogleFonts.specialElite(
                            textStyle: const TextStyle(
                                fontSize: 45,
                                color: Colors.white,
                                letterSpacing: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 25,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton.icon(
                            onPressed: () => {},
                            icon: Column(
                              children: const [
                                Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                Text(
                                  'List',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            label: const Text(""),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.play_arrow,
                              color: Colors.black87,
                            ),
                            label: const Text(
                              "Play",
                              style: TextStyle(color: Colors.black87),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                          ),
                          TextButton.icon(
                            onPressed: () => {},
                            icon: Column(
                              children: const [
                                Icon(
                                  Icons.info_outline,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Info',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            label: const Text(""),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 25),
                  child: Text(
                    "Previews",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.8),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: 170,
                  // decoration: BoxDecoration(
                  //     border: Border.all(color: Colors.black, width: 2)),
                  child: const PRow(),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    "My List",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.8),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: 270,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2)),
                  child: const MyListRow(),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    "Netflix Originals",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.8),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: 450,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2)),
                  child: NflixOriginals(),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}

class PRow extends StatefulWidget {
  const PRow({Key? key}) : super(key: key);

  @override
  State<PRow> createState() => _PRowState();
}

class _PRowState extends State<PRow> {
  List<Content> previews = [
    const Content(
      name: 'Avatar The Last Airbender',
      imageUrl:
          "https://cdn.pixabay.com/photo/2022/02/17/14/28/avatar-the-last-airbender-7018910__340.jpg",
      color: Colors.orange,
    ),
    const Content(
      name: 'Spider Man',
      imageUrl:
          "https://cdn.pixabay.com/photo/2020/09/11/00/06/spiderman-5561671__340.jpg",
      color: Colors.red,
    ),
    const Content(
      name: 'Dare Devil',
      imageUrl:
          "https://cdn.pixabay.com/photo/2017/08/28/00/02/daredevil-2688078_960_720.jpg",
      color: Colors.yellow,
    ),
    const Content(
      name: 'Avatar The Last Airbender',
      imageUrl:
          "https://cdn.pixabay.com/photo/2022/02/17/14/28/avatar-the-last-airbender-7018910__340.jpg",
      color: Colors.blueAccent,
    ),
    const Content(
      name: 'Spider Man',
      imageUrl:
          "https://cdn.pixabay.com/photo/2020/09/11/00/06/spiderman-5561671__340.jpg",
      color: Colors.teal,
    ),
    const Content(
      name: 'Dare Devil',
      imageUrl:
          "https://cdn.pixabay.com/photo/2017/08/28/00/02/daredevil-2688078_960_720.jpg",
      color: Colors.cyan,
    ),
    const Content(
      name: 'Avatar The Last Airbender',
      imageUrl:
          "https://cdn.pixabay.com/photo/2022/02/17/14/28/avatar-the-last-airbender-7018910__340.jpg",
      color: Colors.brown,
    ),
    const Content(
      name: 'Spider Man',
      imageUrl:
          "https://cdn.pixabay.com/photo/2020/09/11/00/06/spiderman-5561671__340.jpg",
      color: Colors.pink,
    ),
    const Content(
      name: 'Dare Devil',
      imageUrl:
          "https://cdn.pixabay.com/photo/2017/08/28/00/02/daredevil-2688078_960_720.jpg",
      color: Colors.indigoAccent,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 170,
        child: (ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: previews.length,
            itemBuilder: (context, index) {
              final Content content = previews[index];
              return Stack(children: [
                Container(
                  height: 175,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.zero,
                      color: Colors.black),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 1, left: 1),
                    child: CircleAvatar(
                      backgroundColor: content.color,
                      radius: 100,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(content.imageUrl),
                        radius: 80,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 75,
                    child: SizedBox(
                      width: 200,
                      child: Text(content.name,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.pacifico(
                            textStyle: const TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ))
              ]);
            })),
      ),
    );
  }
}

class MyListRow extends StatefulWidget {
  const MyListRow({Key? key}) : super(key: key);

  @override
  State<MyListRow> createState() => _MyListRowState();
}

class _MyListRowState extends State<MyListRow> {
  List movie_posters = [
    "assets/imgs/grayman.jpg",
    "assets/imgs/mova.jpg",
    "assets/imgs/movb.jpg",
    "assets/imgs/movc.jpg",
    "assets/imgs/movd.jpg",
    "assets/imgs/move.jpg",
    "assets/imgs/movf.jpg",
    "assets/imgs/movg.jpg",
    "assets/imgs/movh.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: 270,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movie_posters.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8),
                child: SizedBox(
                    width: 175,
                    child: Image(
                      image: AssetImage(movie_posters[index]),
                      fit: BoxFit.cover,
                    )),
              );
            }),
      ),
    );
  }
}

class NflixOriginals extends StatelessWidget {
  NflixOriginals({Key? key}) : super(key: key);

  List oriposters = [
    "assets/imgs/qqq.jpg",
    "assets/imgs/qqw.jpg",
    "assets/imgs/qqe.jpg",
    "assets/imgs/qqr.jpg",
    "assets/imgs/qqt.jpg",
    "assets/imgs/qqy.jpg",
    "assets/imgs/qqu.jpg",
    "assets/imgs/qqi.jpg",
    "assets/imgs/qqo.jpg",
    "assets/imgs/qqp.jpg",
    "assets/imgs/qqa.jpg",
    "assets/imgs/qqs.jpg",
    "assets/imgs/qqd.jpg",
    "assets/imgs/qqf.jpg",
    "assets/imgs/qqg.jpg",
    "assets/imgs/qqh.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 450,
        color: Colors.black,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: oriposters.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8),
                child: SizedBox(
                    width: 250,
                    child: Image(
                      image: AssetImage(oriposters[index]),
                      fit: BoxFit.cover,
                    )),
              );
            }),
      ),
    );
  }
}

class Content {
  final String name;
  final String imageUrl;
  final Color? color;

  const Content({
    required this.name,
    required this.imageUrl,
    this.color,
  });
}
