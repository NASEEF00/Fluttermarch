import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttermarch/Loginpage.dart';

class RegistrationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RegistrationPageState();
}

class RegistrationPageState extends State {
  @override
  Widget build(BuildContext context) {
    final form = GlobalKey<FormState>();
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.white54),
        child: Form(
          key: form,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 30),
                    child: Image(
                      image: AssetImage("assets/imgs/origami.png"),
                      height: 100,
                      width: 100,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, top: 4, bottom: 5, right: 10),
                child: Card(
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
                        child: Text(
                          "REGISTER",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            icon: Icon(Icons.person),
                            labelText: "Full Name",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                icon: Icon(Icons.email),
                                labelText: "Email"),
                            validator: (Text) {
                              if (Text == null ||
                                  !(Text.contains("@")) ||
                                  Text.isEmpty) {
                                return "Enter a valid Email";
                              }
                              return null;
                            }),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                icon: Icon(Icons.key),
                                labelText: "Password",
                              ),
                              obscureText: true,
                              obscuringCharacter: "*",
                              validator: (value) {
                                if (value!.length < 7) {
                                  return "Password must contain at least 6 characters";
                                }
                              })),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            icon: Icon(Icons.key),
                            labelText: "Confirm Password",
                          ),
                          obscureText: true,
                          obscuringCharacter: "*",
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          final isValid = form.currentState!.validate();
                          if (isValid) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Loginpage()));
                          }
                        },
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red)),
                        child:
                            const Text("              Register              "),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12, bottom: 23),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Already Registered ?'),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Loginpage()));
                              },
                              child: const Text("Login"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
