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

  TextEditingController resController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Do While'),
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
                  labelText: 'no1',
                  hintText: 'digits',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                controller: resController,
                // obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Ans',
                  hintText: 'result',
                ),
              ),
            ),
            ElevatedButton(
                // textColor: Colors.white,
                // color: Colors.black,
                child: Text('Show'),
                onPressed: () {
                  int no1 = int.parse(no1Controller.text);
                  int i = 1;
                  int res = 0;

                  do {
                    res += i;
                    i++;
                  } while (i <= no1);

                  // while (i <= no1) {
                  //   res += i;
                  //   i++;
                  // }
                  resController.text = res.toString();
                }),
          ],
        ),
      ),
    );
  }
}
