import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Mykp(),
  ));
}

class Mykp extends StatefulWidget {
  @override
  State createState() => _State();
}

class _State extends State<Mykp> {
  TextEditingController n1controller = TextEditingController();
  TextEditingController n2controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MaxNum"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                controller: n1controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'enter  a number',
                  hintText: 'Addition of number',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                controller: n2controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'enter  a number',
                  hintText: 'Addition of number',
                ),
              ),
            ),
            ElevatedButton(
              // textColor: Colors.white,
              // color: Colors.greenAccent,
              child: Text("MAX"),
              onPressed: () {
                int n1 = int.parse(n1controller.text);
                int n2 = int.parse(n2controller.text);
                if (n1 > n2) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(''),
                      backgroundColor: Colors.orange,
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(''),
                      backgroundColor: Colors.green,
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
