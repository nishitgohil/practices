import 'package:flutter/material.dart';
import 'DrawerCode.dart';
import 'bottom_bar.dart';


class CheckBoxSamplePage extends StatefulWidget {
  @override
  _CheckBoxSamplePageState createState() => _CheckBoxSamplePageState();
}

class _CheckBoxSamplePageState extends State<CheckBoxSamplePage> {
  bool? penflag = false;
  bool? pencilflag = false;
  bool? bookflag = false;

  bool? hraflag = false;
  bool? daflag = false;
  bool? pfflag = false;

  bool? valuefirst = false;
  bool? valuesecond = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox"),
      ),
       drawer: DrawerCode(),
        bottomNavigationBar:bottom_bar_Page(),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              title: Text("Pen"),
              leading: Checkbox(
                checkColor: Colors.greenAccent,
                activeColor: Colors.red,
                value: this.penflag,
                onChanged: (bool? value) {
                  setState(() {
                    this.penflag = value;
                    if (value == true) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Selected Value is Pen'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Pencil"),
              leading: Checkbox(
                checkColor: Colors.greenAccent,
                activeColor: Colors.red,
                value: this.pencilflag,
                onChanged: (bool? value) {
                  setState(() {
                    this.pencilflag = value;
                    if (value == true) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Selected Value is Pencil'),
                          backgroundColor: Colors.green,
                        ),
                      );
                    }
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Book"),
              leading: Checkbox(
                checkColor: Colors.greenAccent,
                activeColor: Colors.red,
                value: this.bookflag,
                onChanged: (bool? value) {
                  setState(() {
                    this.bookflag = value;
                    if (value == true) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Selected Value is Book'),
                          backgroundColor: Colors.blue,
                        ),
                      );
                    }
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                  checkColor: Colors.greenAccent,
                  activeColor: Colors.red,
                  value: this.hraflag,
                  onChanged: (bool? value) {
                    setState(() {
                      this.hraflag = value;
                      if (value == true) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Selected Value is Hra'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    });
                  },
                ),
                Text(
                  'HRA',
                  style: new TextStyle(fontSize: 17.0),
                ),
                Checkbox(
                  checkColor: Colors.greenAccent,
                  activeColor: Colors.red,
                  value: this.daflag,
                  onChanged: (bool? value) {
                    setState(() {
                      this.daflag = value;
                      if (value == true) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Selected Value is Da'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    });
                  },
                ),
                Text(
                  'DA',
                  style: new TextStyle(fontSize: 17.0),
                ),
                Checkbox(
                  checkColor: Colors.greenAccent,
                  activeColor: Colors.red,
                  value: this.pfflag,
                  onChanged: (bool? value) {
                    setState(() {
                      this.pfflag = value;
                      if (value == true) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Selected Value is pf'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    });
                  },
                ),
                Text(
                  'PF',
                  style: new TextStyle(fontSize: 17.0),
                ),
              ],
            ),
            CheckboxListTile(
              secondary: const Icon(Icons.add_chart_rounded),
              title: Text(
                'I am Title',
                style: new TextStyle(
                    fontWeight: FontWeight.bold, // light
                    fontStyle: FontStyle.italic),
              ),
              subtitle: Text(
                'Call Me after 5 pm......',
                style: new TextStyle(color: Colors.deepOrange),
              ),
              value: this.valuefirst,
              onChanged: (bool? value) {
                setState(() {
                  this.valuefirst = value;
                  if (value == true) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Call Me after 5 pm...... '),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                });
              },
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              secondary: const Icon(Icons.account_balance_wallet_rounded),
              title: const Text('Checking Balance'),
              subtitle: Text('Minimum 5000 '),
              value: this.valuesecond,
              onChanged: (bool? value) {
                setState(() {
                  this.valuesecond = value;
                  if (value == true) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Minimum 5000'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
