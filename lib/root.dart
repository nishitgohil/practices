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
  int? val = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Root'),
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
                        labelText: 'No1',
                        hintText: 'digits',
                      )),
                ),
                ListTile(
                  title: Text("Square"),
                  leading: Radio(
                      value: 1,
                      groupValue: val,
                      onChanged: (int? value) {
                        setState(() {
                          val = value;
                        });

                        int n = int.parse(no1Controller.text);
                        int ans = n * n;
                        resController.text = ans.toString();
                      }),
                ),
                ListTile(
                  title: Text("Cube"),
                  leading: Radio(
                      value: 2,
                      groupValue: val,
                      onChanged: (int? value) {
                        setState(() {
                          val = value;
                        });

                        int n = int.parse(no1Controller.text);
                        int ans = n * n * n;
                        resController.text = ans.toString();
                      }),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextFormField(
                    controller: resController,
                    //obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Ans',
                      hintText: 'Result',
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
                      while (i <= no1) {
                        res += i;
                        i++;
                      }
                      resController.text = res.toString();
                    })
              ],
            )));
  }
}
