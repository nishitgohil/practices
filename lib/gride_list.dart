// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = "Grid List";
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text(appTitle),
          backgroundColor: Colors.blueGrey[900],
        ),
        body:Padding(
          padding: const EdgeInsets.all(15),
      
        child:  GridView.count(
          crossAxisCount: 3,
          children: List.generate(choices.length, (index) {
           
            return Center(
              child: SelectCard(choice: choices[index]),
            );
          }
          ),
        ),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Home', icon: Icons.home),
  const Choice(title: 'Contact', icon: Icons.contacts),
  const Choice(title: 'Mao', icon: Icons.map),
  const Choice(title: 'Phone', icon: Icons.phone),
  const Choice(title: 'Camera', icon: Icons.camera_alt),
  const Choice(title: 'Setting', icon: Icons.settings),
  const Choice(title: 'Album', icon: Icons.photo_album),
  const Choice(title: 'WiFi', icon: Icons.wifi),
  const Choice(title: 'GPS', icon: Icons.gps_fixed),
  const Choice(title: 'Music', icon: Icons.play_arrow),
  const Choice(title: 'Gallery', icon: Icons.image),
  const Choice(title: 'Browser', icon: Icons.web),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Color.fromARGB(255, 48, 109, 201),
        child: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Icon(choice.icon, size: 100, color: Color.fromARGB(255, 161, 46, 181))),
                Text(choice.title,
                    style: const TextStyle(fontSize: 25, color: Colors.black54)),
              ]),
        ));
  }
}
