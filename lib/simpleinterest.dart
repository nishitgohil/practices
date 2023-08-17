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
  TextEditingController Pcontroller = TextEditingController();
  TextEditingController Tcontroller = TextEditingController();
  TextEditingController Rcontroller = TextEditingController();
  TextEditingController ansController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Form'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: Pcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Amount',
                  hintText: 'Principal Amount',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: Tcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Interest',
                  hintText: 'Rate of Interest',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: Rcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Num Of Years',
                  hintText: 'Number Of Years',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: ansController,
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Interest',
                  hintText: 'Simple Interest',
                ),
              ),
            ),
            // RaisedButton(
            //     textColor: Colors.white,
            //     color: Colors.black,
            //     child: Text('Show'),
            //     onPressed: () {
            //       int P = int.parse(Pcontroller.text);
            //       int T = int.parse(Tcontroller.text);
            //       int R = int.parse(Rcontroller.text);
            //       double res = P * T * R / 100;
            //       // ansController.text="sdas";
            //       ansController.text = res.toString();
            //       // var ans =ansController.text;
            //       var msg = "";
            //     }),
            ElevatedButton(
                // textColor: Colors.white,
                // color: Colors.black,
                child: Text('Show'),
                onPressed: () {
                  int P = int.parse(Pcontroller.text);
                  int T = int.parse(Tcontroller.text);
                  int R = int.parse(Rcontroller.text);
                  double res = P * T * R / 100;
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
