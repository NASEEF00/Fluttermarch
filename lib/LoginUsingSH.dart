import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginSh extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginSHState();
}

class LoginSHState extends State {
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

  late SharedPreferences logindata;
  late bool newuser;

  @override
  void initState() {
    super.initState();
  checkifalreadylogin();
  username_controller.addListener(() {
    final String text = username_controller.text.toLowerCase();
    username_controller.value = username_controller.value.copyWith(
        text: text,
        selection:
        TextSelection(baseOffset: text.length, extentOffset: text.length),
    composing: TextRange.empty,
    );
  });
  }
  void checkifalreadylogin() async{
  logindata = await SharedPreferences.getInstance();
  newuser = (logindata.getBool('login') ?? true);


  if (newuser == false){
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>NewHomePage()));
  }
  }
  @override
  void dispose() {
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Login Page",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: username_controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'username',
                ),
              ),
            ),
            Padding(
              padding:  const EdgeInsets.all(15.0),
              child: TextField(
                controller: password_controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                String username = username_controller.text;
                String password = password_controller.text;
                if (username != '' && password != '') {
                  print('Successfull');

                  logindata.setBool('login', false);
                  logindata.setString('username', username);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const NewHomePage()));
                }
              },
              child: const Text("Log-In"),
            ),

          ],
        ),
      ),
    );
  }


}

class NewHomePage extends StatefulWidget {
  const NewHomePage({Key? key}) : super(key: key);

  @override
  State<NewHomePage> createState() => _NewHomePageState();

}

class _NewHomePageState extends State<NewHomePage> {
  late SharedPreferences logindata;
  late String username;

  @override
  void initState(){
    initial();
  }
  void initial() async{
    logindata = await SharedPreferences.getInstance();
    setState((){
      username = logindata.getString('username')!;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'Hai $username Welcome To My App ',
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                logindata.setBool('login', true);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginSh()));
              },
              child: const Text('LogOut'),
            )
          ],
        ),
      ),
    );
  }

}


