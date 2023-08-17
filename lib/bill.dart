import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CheckBoxSamplePage(),
  ));
}

class CheckBoxSamplePage extends StatefulWidget {
  @override
  _CheckBoxSamplePageState createState() => _CheckBoxSamplePageState();
}

class _CheckBoxSamplePageState extends State<CheckBoxSamplePage> {
  TextEditingController no1Controller = TextEditingController();
  
  bool pizzaflag = false;
  bool coke = false;
  bool burger = false;

  int pizzaPrice = 0;
  int cokePrice = 0;
  int burgerPrice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bill"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ListTile(
              title: Text("Pizza(200)"),
              leading: Checkbox(
                value: this.pizzaflag,
                onChanged: (bool? value) {
                  if (value == true) {
                    pizzaPrice = 200;
                  } else {
                    pizzaPrice = 0;
                  }
                  sumAmt();
                  setState(() {
                    this.pizzaflag = value ?? false;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Coke(20)"),
              leading: Checkbox(
                value: this.coke,
                onChanged: (bool? value) {
                  if (value == true) {
                    cokePrice = 20;
                  } else {
                    cokePrice = 0;
                  }
                  sumAmt();
                  setState(() {
                    this.coke = value ?? false;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Burger(50)"),
              leading: Checkbox(
                value: this.burger,
                onChanged: (bool? value) {
                  if (value == true) {
                    burgerPrice = 50;
                  } else {
                    burgerPrice = 0;
                  }
                  sumAmt();
                  setState(() {
                    this.burger = value ?? false;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                controller: no1Controller,
                enabled: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Total Bill',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void sumAmt() {
    int sum = burgerPrice + cokePrice + pizzaPrice;
    no1Controller.text = sum.toString();
  }
}
