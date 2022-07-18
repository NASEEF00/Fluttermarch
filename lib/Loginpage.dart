import 'package:flutter/material.dart';
import 'package:fluttermarch/Homepage.dart';
import 'package:fluttermarch/listviewbuilder.dart';

import 'Contactbook.dart';

class Loginpage extends StatelessWidget {
  final form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Form(
        key: form,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.only(top: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: Image(
                    image: AssetImage("assets/imgs/origami.png"),
                    height: 100,
                    width: 100,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 1),
                  child: Text(
                    " Login",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.email),
                  labelText: "Email",
                ),
                validator: (text) {
                  if (text == null || !(text.contains("@")) || text.isEmpty) {
                    return "Enter a valid email address";
                  }
                  return null;
                },
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              child: TextField(
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.password),
                  labelText: "Password",
                  helperText: "Password must contain 6 characters",
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
            final isValid = form.currentState!.validate();
               if (isValid) {
                 Navigator.push(context,
                     MaterialPageRoute(builder: (context) => ContactBook()));
               }
                },
                child: const Text("Login"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 100, bottom: 10),
              child: TextButton(
                onPressed: () {},
                child: const Text("Click here to register"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
