import 'package:flutter/material.dart';

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
  int? color = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator Drawer"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 1,
                  groupValue: color,
                  onChanged: (int? val) {
                    setState(() {
                      color = val;
                    });
                  },
                ),
                Text(
                  'Red',
                  style: new TextStyle(fontSize: 17.0),
                ),
                Radio(
                  value: 2,
                  groupValue: color,
                  onChanged: (int? val) {
                    setState(() {
                      color = 2;
                    });
                  },
                ),
                Text(
                  'Green',
                  style: new TextStyle(
                    fontSize: 17.0,
                  ),
                ),
                Radio(
                  value: 3,
                  groupValue: color,
                  onChanged: (int? val) {
                    setState(() {
                      color = 3;
                    });
                  },
                ),
                Text(
                  'Blue',
                  style: new TextStyle(fontSize: 17.0),
                ),
              ],
            ),
            if (color == 1)
              Text(
                'I am Red Color',
                style: new TextStyle(fontSize: 17.0, color: Colors.red),
              )
            else if (color == 2)
              Text(
                'I am Green Color',
                style: new TextStyle(fontSize: 17.0, color: Colors.green),
              )
            else if (color == 3)
              Text(
                'I am Blue Color',
                style: new TextStyle(fontSize: 17.0, color: Colors.blue),
              )
          ],
        ),
      ),
    );
  }
}
