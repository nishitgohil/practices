import 'package:flutter/material.dart';


import 'DrawerCode.dart';
import 'bottom_bar.dart';
void main() {
  runApp(MaterialApp(
    home: RadioSample(),
  ));
}

class RadioSample extends StatefulWidget {
  @override
  _RadioSampleState createState() => _RadioSampleState();
}

class _RadioSampleState extends State<RadioSample> {
  bool _value = false;
  int? val = -1;
  int? color = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RadioButtons"),
      ),
      drawer: DrawerCode(),
       bottomNavigationBar:bottom_bar_Page(),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              title: Text("Male"),
              leading: Radio(
                value: 1,
                groupValue: val,
                onChanged: (int? value) {
                  setState(() {
                    val = value;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Selected Value is Male'),
                        backgroundColor: Colors.green,
                      ),
                    );
                  });
                },
                activeColor: Colors.blue,
              ),
            ),
            ListTile(
              title: Text("Female"),
              leading: Radio(
                value: 2,
                groupValue: val,
                onChanged: (int? value) {
                  setState(() {
                    val = value;
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Selected Value is Female'),
                      backgroundColor: Colors.red,
                    ));
                  });
                },
                // activeColor: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
