import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'radiosample1.dart';
import 'checkbox.dart';
import 'DropdownSamplePage.dart';

class DrawerCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Column(
              children: <Widget>[
                Flexible(
                  child: Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'http://codeskulptor-demos.commondatastorage.googleapis.com/GalaxyInvaders/alien_7_2.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
                Text(
                  "Intellect Computers",
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                Text(
                  "Surat",
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white70),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.person_outline),
            title: Text("Radio Sample"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => RadioSample()));
            },
          ),
          ListTile(
            leading: Icon(Icons.check_box),
            title: Text("CheckBox "),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CheckBoxSamplePage()));
              print("Go to Settings");
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_drop_down),
            title: Text("DropwDownSample"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => DropdownSamplePage()));
              print("Go to Settings");
            },
          ),

          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text("Logout"),
            onTap: () {
              print("Logout Users");
              Navigator.pop(context);
              SystemNavigator.pop();
            },
          ),
        ],
      ),
    );
  }
}