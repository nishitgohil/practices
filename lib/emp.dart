import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'employeemain.dart';

class employeeWidget extends StatefulWidget {
  @override
  employeeState createState() {
    return employeeState();
  }
}

class employeeState extends State<employeeWidget> {
  TextEditingController n1controller = TextEditingController();
  TextEditingController n2controller = TextEditingController();
  TextEditingController n3controller = TextEditingController();

  bool _value = false;
  int? color = 0;
  employee e = new employee(name: "", desgn: "", salary: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Employees Detail Form'),
        backgroundColor: Colors.blueGrey[900],
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
                  labelText: "Enter Employee Name",
                  hintText: "Your name",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                controller: n2controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Designation",
                  hintText: "Your Designation",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                controller: n3controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Salary",
                  hintText: "Your Salary",
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20),
                ),
                ElevatedButton(
                    // textColor: Colors.white,
                    // color: Colors.black,
                    child: Text('SUBMIT'),
                    onPressed: () {
                      var n1 = n1controller.text;
                      var n2 = n2controller.text;
                      var n3 = n3controller.text;
                      setState(() {
                        e.name = n1;
                        e.salary = n3;
                        e.desgn = n2;
                      });
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Submited"),
                        backgroundColor: Colors.green,
                      ));
                    })
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20),
                ),
                ElevatedButton(
                    // textColor: Colors.white,
                    // color: Colors.black,
                    child: Text('SHOW'),
                    onPressed: () {
                      // var n1 =n1controller.text;
                      // var n2 =n2controller.text;
                      // var n3 =n3controller.text;
                      // setState(() {
                      // });
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(e.name + '  ' + e.desgn + ' ' + e.salary),
                        backgroundColor: Colors.green,
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
