import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  TextEditingController no1Controller = TextEditingController();
  TextEditingController no2Controller = TextEditingController();
  TextEditingController ansController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Addition'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                controller: no1Controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Number',
                  hintText: 'Addition of Number',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                controller: no2Controller,
                //obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Numbr',
                  hintText: 'Addition Of Nummbr',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                controller: ansController,
                // obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'ans',
                  hintText: 'Addition Of Number',
                ),
              ),
            ),
            ElevatedButton(
                // textColor: Colors.white,
                // color: Colors.black,
                child: Text('Show'),
                onPressed: () {
                  int no1 = int.parse(no1Controller.text);
                  int no2 = int.parse(no2Controller.text);
                  int res = no1 + no2;
                  // ansController.text="sdas";
                  ansController.text = res.toString();
                  // var ans =ansController.text;
                  var msg = "";
                }),
          ],
        ),
      ),
    );
  }
}
