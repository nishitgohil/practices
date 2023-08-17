import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Intellect",
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("B.Tech IT"),
        ),
        body:
        Center (child:Text("We are learn flutter")),
    );
  }
}
