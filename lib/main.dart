import 'package:flutter/material.dart';
import 'DrawerCode.dart';
import 'bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Samples',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Drawer Samples"),
      ),
      drawer: DrawerCode(), // this is drawerCode page
      bottomNavigationBar: bottom_bar_Page(),
      // body:
      //   Center (child:Text("flutter Application Developnment")),
    );
  }
}
