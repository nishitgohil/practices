import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // final appTitle = 'Flutter Basic List Demo';
    return MaterialApp(
      // title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.image_search),
              title:Text('images search')
            ),
            ListTile(
              leading: Icon(Icons.phone_android),
              title: Text('Android Phone'),
            ),
            ListTile(
              leading: Icon(Icons.phone_iphone_sharp),
              title: Text('iPhone'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
            ),
          ],
        ),
      ),
    );
  }
}
