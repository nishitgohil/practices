import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Flutter Horizontal Demo List';

    return MaterialApp(
      title: title,
      home: Scaffold(
                backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 25.0),
          height: 150.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 150.0,
                color: Colors.blue,
                child: new Stack(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('Home'),
                    ),
                  ],
                ),
              ),
              Container(
                width: 148.0,
                color: Colors.green,
                child: new Stack(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.camera_alt),
                      title: Center (child: Text('Camera'),
                    ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 148.0,
                color: Colors.yellow,
                child: new Stack(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('Phone'),
                    ),
                  ],
                ),
              ),
              Container(
                width: 148.0,
                color: Colors.red,
                child: new Stack(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.map),
                      title: Text('Map'),
                    ),
                  ],
                ),
              ),
              Container(
                width: 148.0,
                color: Colors.orange,
                child: new Stack(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('Setting'),
                    ),
                  ],
                ),
              ),
              Container(
                width: 148.0,
                color: Colors.purple,
                child: new Stack(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.image),
                      title: Text('Gallery'),
                    ),
                  ],
                ),
              ),
              Container(
                width: 148.0,
                color: Colors.greenAccent,
                child: new Stack(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.web_asset),
                      title: Text('Browser'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
