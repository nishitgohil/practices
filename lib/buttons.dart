import 'package:flutter/material.dart';

// import 'bottom_bar.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Welcome to Flutter'),
        // ),
        body: Center(
          child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(25),
              child: TextButton(
                child: Text(
                  'SignUp',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  final snackbar = SnackBar(
                    content: Text("You Selected SignUp"),
                  );
                  // Scaffold.of(context).showSnackBar(snackbar);
                  //new added 17-8-23
                  ScaffoldMessenger.of(context).showSnackBar;
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: ElevatedButton(
                child: Text(
                  "Raised Button",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  final snackbar =
                      SnackBar(content: Text("You Selected Raised Button"));
                  Scaffold.of(context).showSnackBar(snackbar);
                },
                color: Colors.orange,
                textColor: Colors.white,
                padding: EdgeInsets.all(18.0),
                splashColor: Colors.black,
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: TextButton(
                child: Text(
                  'LogIn',
                  style: TextStyle(fontSize: 20.0),
                ),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  final snackbar =
                      SnackBar(content: Text("You Selected LogIn Button"));
                  Scaffold.of(context).showSnackBar(snackbar);
                },
              ),
            ),
            Container(
              child: FloatingActionButton.extended(
                onPressed: () {
                  // Add your onPressed code here!
                  final snackbar =
                      SnackBar(content: Text("You Selected Approve Button"));
                  Scaffold.of(context).showSnackBar(snackbar);
                },
                label: const Text('Approve'),
                icon: const Icon(Icons.thumb_up),
                backgroundColor: Colors.purple,
              ),
            ),
            InkWell(
              splashColor: Colors.red,
              highlightColor: Colors.blue,
              child: Icon(Icons.ring_volume, size: 50),
              onTap: () {
                print("tapped on container");
                final snackbar =
                    SnackBar(content: Text("You Selected InkWell"));
                Scaffold.of(context).showSnackBar(snackbar);
                // setState(() {

                // }
                //         );
              },
            ),
            OutlinedButton(
              child: Text(
                "Outline Button",
                style: TextStyle(fontSize: 20.0),
              ),
              highlightedBorderColor: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              onPressed: () {
                final snackbar =
                    SnackBar(content: Text("You Selected Outline Button"));
                Scaffold.of(context).showSnackBar(snackbar);
              },
            ),
            ButtonBar(mainAxisSize: MainAxisSize.min, children: <Widget>[
              ElevatedButton(
                child: Text(
                  "Btn1",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  final snackbar = SnackBar(content: Text("You Selected Btn1"));
                  Scaffold.of(context).showSnackBar(snackbar);
                },
                color: Colors.orange,
                textColor: Colors.white,
                padding: EdgeInsets.all(18.0),
                splashColor: Colors.black,
              ),
              ElevatedButton(
                child: Text(
                  "Btn2",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  final snackbar = SnackBar(content: Text("You Selected Btn2"));
                  Scaffold.of(context).showSnackBar(snackbar);
                },
                color: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.all(18.0),
                splashColor: Colors.black,
              ),
              ElevatedButton(
                child: Text(
                  "Btn3",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  final snackbar = SnackBar(content: Text("You Selected Btn3"));
                  Scaffold.of(context).showSnackBar(snackbar);
                },
                color: Colors.green,
                textColor: Colors.white,
                padding: EdgeInsets.all(18.0),
                splashColor: Colors.black,
              ),
            ]),
            ElevatedButton(
                child: const Text('Elevated Button'),
                onPressed: () {
                  final snackbar =
                      SnackBar(content: Text("You Selected Elevated Button"));
                  Scaffold.of(context).showSnackBar(snackbar);
                }),
          ]),
          // drawer: Drawer(
          //   child: ListView(
          // Important: Remove any padding from the ListView.
          // padding: EdgeInsets.zero,
          // children: <Widget>[
          //   UserAccountsDrawerHeader(
          //     decoration: BoxDecoration(
          //       color: Colors.grey,
          //     ),
          //     accountName: Text(
          //       "Intellect Computers",
          //       style: TextStyle(
          //         color: Colors.blue,
          //         fontSize: 20.0,
          //       ),
          //     ),
          //     accountEmail: Text("intellect@gmail.com"),
          //     currentAccountPicture: CircleAvatar(
          //       backgroundColor: Colors.orange,
          //       child: Text(
          //         "II",
          //         style: TextStyle(fontSize: 40.0),
          //       ),
          //     ),
          //   ),
          //   ListTile(
          //     leading: Icon(Icons.home),
          //     title: Text("Home"),
          //     onTap: () {
          //       Navigator.pop(context);
          //     },
          //   ),
          //   ListTile(
          //     leading: Icon(Icons.settings),
          //     title: Text("Settings"),
          //     onTap: () {
          //       Navigator.pop(context);
          //     },
          //   ),
          //   ListTile(
          //     leading: Icon(Icons.contacts),
          //     title: Text("Contact Us"),
          //     onTap: () {
          //       Navigator.pop(context);
          //     },
          //   ),
          // ],
          //   ),
          // ),
        ),
      ),
    );
  }
}
