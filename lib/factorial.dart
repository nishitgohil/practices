import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Myfact(),
  ));
}

class Myfact extends StatefulWidget {
  @override
  State createState() => _State();
}

class _State extends State<Myfact> {
  TextEditingController n1controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Factorize"),
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
                  labelText: 'enter number',
                  hintText: 'Factorial number to be added',
                ),
              ),
            ),
            ElevatedButton(
                // textColor: Colors.white,
                // color: Colors.greenAccent,
                child: Text("Factorial"),
                onPressed: () {
                  int n1 = int.parse(n1controller.text);
                  var num = 10;
                  var factorial = 1;
                  for (var i = num; i >= 1; i--) {
                    factorial *= i;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('$num' + ' is ' + ' $factorial'),
                        backgroundColor: Colors.green,
                      ),
                    );
                  }
                }),
          ],
        ),
      ),
    );
  }
}
