// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String phoneNumber = "";
  String pass = "";
  String res = "";
  @override
  Widget build(BuildContext context) {
    var data = 'Forget password? No yawa.Tap me';
    return Scaffold(
      body: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: duplicate_ignore
          children: <Widget>[
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.all(20),
              child: const Image(
                image: AssetImage('pic/logo.png'),
                width: 300,
                height: 100,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(), labelText: 'Phone Number'),
                onChanged: (String val) {
                  phoneNumber = val;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(), labelText: 'Password'),
                onChanged: (String val) {
                  pass = val;
                },
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 280,
              child: Card(
                  elevation: 15,
                  shadowColor: Colors.blue[200],
                  child: CupertinoButton.filled(
                    onPressed: () {
                      res =
                          'Your phone is: $phoneNumber and your pass is: $pass ';
                      setState(() {});
                    },
                    child: const Text('Log In'),
                  )),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                  child: Text(
                data,
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'regFont'),
              )),
            ),
            const SizedBox(height: 15),
            Container(
                padding: const EdgeInsets.all(1.0),
                child: const CupertinoButton.filled(
                  onPressed: null,
                  child: Text('No Account? Sign Up'),
                  disabledColor: Color.fromARGB(255, 196, 196, 196),
                )),
            // ignore: avoid_unnecessary_containers
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.all(8),
              child: Text(
                res,
                style: TextStyle(
                  color: Colors.blueGrey[400],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
