import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: radiofnl(),
  ));
}

class radiofnl extends StatefulWidget {
  @override
  _radioState createState() => _radioState();
}

class _radioState extends State<radiofnl> {
  TextEditingController n1controller = TextEditingController();
  TextEditingController n2controller = TextEditingController();
  TextEditingController n3controller = TextEditingController();

  bool _value = false;
  int? color = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
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
                  labelText: "Enter Your Name",
                  hintText: "Your Name",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                controller: n2controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter the Password",
                  hintText: "Your Password",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                controller: n3controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter the email-id",
                  hintText: "Your email-id",
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                ),
                Radio(
                    value: 1,
                    groupValue: color,
                    onChanged: (int? val) {
                      setState(() {
                        color = val;
                      });
                    }),
                Text(
                  'OPEN',
                  style: new TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                ),
                Radio(
                    value: 2,
                    groupValue: color,
                    onChanged: (int? val) {
                      setState(() {
                        color = val;
                      });
                    }),
                Text(
                  'SC',
                  style: new TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                ),
                Radio(
                    value: 3,
                    groupValue: color,
                    onChanged: (int? val) {
                      setState(() {
                        color = val;
                      });
                    }),
                Text(
                  'ST',
                  style: new TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20),
                ),
                ElevatedButton(
                    //  textColor: Colors.white,
                    //  color: Colors.black,
                    child: Text('SUBMIT'),
                    onPressed: () {
                      var n1 = n1controller.text;
                      var n2 = n2controller.text;
                      var n3 = n3controller.text;
                      setState(() {});
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(n1),
                        backgroundColor: Colors.red,
                      ));
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
