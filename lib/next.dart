import 'package:flutter/material.dart';

class nextpage extends StatefulWidget {
  const nextpage({super.key});

  @override
  State<nextpage> createState() => _nextpageState();
}

class _nextpageState extends State<nextpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text("TOp"),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          backgroundColor: Colors.amber,
          elevation: 50,
        ),
        body: Center(
          child: Text(
            "Next \nScreen",
            style: TextStyle(
                color: Color.fromARGB(255, 5, 0, 0),
                fontSize: 50,
                fontWeight: FontWeight.bold),
          ),
        ));
  }
}
