import 'dart:async';

import 'package:backbutton/next.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), completed);
  }

  void completed() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => nextpage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 148, 145, 145),
        appBar: AppBar(
          title: Text("Back"),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          backgroundColor: Color.fromARGB(255, 136, 134, 134),
          elevation: 50,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Splash \nScreen",
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 55,
                    fontWeight: FontWeight.bold),
              ),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.white),
              )
            ],
          ),
        ));
  }
}
