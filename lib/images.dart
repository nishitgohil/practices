import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Images'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset('images/diamond.png',
                height: 400,  
                  width: 250  
              ), 
              Text(
                'Diamond Image.',
                style: TextStyle(fontSize:20.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
