import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class StackLoginEx extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StackLoginExState();
}

class StackLoginExState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              Ink.image(
                image: const NetworkImage(
                    "https://cdn.pixabay.com/photo/2020/02/06/20/01/university-library-4825366_960_720.jpg"),
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 40,
                child: SizedBox(
                  height: 50,
                  width: 500,
                  child: Text(
                    "Welcome",
                    style: GoogleFonts.cagliostro(
                        fontSize: 30,
                        color: Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const Positioned(
                top: 85,
                child: SizedBox(
                  width: 500,
                  child: Text(
                    "Welcome to My login app. \n You are awesome ",
                    style: TextStyle(
                        fontFamily: 'Poppins-Italic', color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                bottom: 120,
                left: 35,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.redAccent),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red)))),
                      child:
                          const Text("                  Login                "),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Colors.grey.withAlpha(200)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.grey)))),
                        child: const Text(
                            "                  Sign Up               "),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 60,
                left: 160,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Colors.transparent.withOpacity(0.1)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(color: Colors.red)))),
                  icon: const FaIcon(
                    FontAwesomeIcons.google,
                  ),
                  label: const Text("Sign in with Google"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
