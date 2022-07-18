import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.cyan),
    debugShowCheckedModeBanner: false,
    home: const ProfileUi(),
  ));
}

Future facebookurl() async{
  if(!await launchUrl(Uri.parse("https://www.facebook.com/"))){
    throw "Could not launch facebook ";
  }
}
Future googleurl() async{
  if(!await launchUrl(Uri.parse("https://www.google.com/"))){
    throw "Could not launch google ";
  }
}
Future twitterurl() async{
  if(!await launchUrl(Uri.parse("https://www.twitter.com/"))){
    throw "Could not launch twitter ";
  }
}
Future linkedinurl() async{
  if(!await launchUrl(Uri.parse("https://www.linkedin.com/"))){
    throw "Could not launch linkedin ";
  }
}


class ProfileUi extends StatefulWidget {
  const ProfileUi({Key? key}) : super(key: key);

  @override
  State<ProfileUi> createState() => _ProfileUiState();
}

class _ProfileUiState extends State<ProfileUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.table_rows))
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey.withOpacity(0.3),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:20),
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.aspectRatio * 100,
                    backgroundImage:
                        const AssetImage("assets/imgs/charfive.jpeg"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: InkWell(onTap: (){
                            facebookurl();
                          },
                            child: FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Colors.blueAccent.shade700,
                              size: MediaQuery.of(context).size.aspectRatio * 60,
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(onTap: (){googleurl();},
                            child: FaIcon(
                              FontAwesomeIcons.google,
                              color: Colors.redAccent,
                              size: MediaQuery.of(context).size.aspectRatio * 60,
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(onTap: (){twitterurl();},
                            child: FaIcon(
                              FontAwesomeIcons.twitter,
                              color: Colors.lightBlueAccent,
                              size: MediaQuery.of(context).size.aspectRatio * 60,
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(onTap: (){linkedinurl();},
                            child: FaIcon(
                              FontAwesomeIcons.linkedin,
                              color: Colors.blueAccent,
                              size: MediaQuery.of(context).size.aspectRatio * 60,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Chromicle",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.aspectRatio * 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Text(
                    "@amFOSS",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.aspectRatio * 20,
                        color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Text("Mobile App Developer and Open source Enthusiastic",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.aspectRatio * 30,
                      color: Colors.black.withOpacity(0.6)),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,)
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15,bottom:15),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height*0.06,
                    width: MediaQuery.of(context).size.width*0.8,
                    child: ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.transparent,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 6),
                            child: Icon(Icons.privacy_tip_outlined),
                          ),
                          Text('Privacy',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Expanded(
                            child: Align(alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.keyboard_arrow_right_sharp,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15,bottom:15),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height*0.06,
                    width: MediaQuery.of(context).size.width*0.8,
                    child: ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.transparent,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 6),
                            child: Icon(Icons.history),
                          ),
                          Text('Purchase history',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Expanded(
                            child: Align(alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.keyboard_arrow_right_sharp,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15,bottom:15),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height*0.06,
                    width: MediaQuery.of(context).size.width*0.8,
                    child: ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.transparent,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 6),
                            child: Icon(Icons.help_outline_outlined),
                          ),
                          Text('Help & support',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Expanded(
                            child: Align(alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.keyboard_arrow_right_sharp,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15,bottom:15),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height*0.06,
                    width: MediaQuery.of(context).size.width*0.8,
                    child: ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.transparent,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 6),
                            child: Icon(Icons.settings),
                          ),
                          Text('Settings',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Expanded(
                            child: Align(alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.keyboard_arrow_right_sharp,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15,bottom:15),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height*0.06,
                    width: MediaQuery.of(context).size.width*0.8,
                    child: ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.transparent,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 6),
                            child: Icon(Icons.people),
                          ),
                          Text('Invite friends',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Expanded(
                            child: Align(alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.keyboard_arrow_right_sharp,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
