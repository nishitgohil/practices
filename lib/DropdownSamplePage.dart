import 'package:flutter/material.dart';
import 'DrawerCode.dart';
import 'bottom_bar.dart';

void main() {
  runApp(MaterialApp(
    home: DropdownSamplePage(),
  ));
}

class DropdownSamplePage extends StatefulWidget {
  @override
  _DropdownSampleState createState() => _DropdownSampleState();
}

class _DropdownSampleState extends State<DropdownSamplePage> {
  String? dropdownvalue = 'Apple';
  var items = [
    'Apple',
    'Banana',
    'Grapes',
    'Orange',
    'Watermelon',
    'Pineapple'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDown"),
      ),
      drawer: DrawerCode(),
      bottomNavigationBar: bottom_bar_Page(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton(
                value: dropdownvalue,
                icon: Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(value: items, child: Text(items));
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue;

                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Alert Message"),
                          // Retrieve the text which the user has entered by
                          // using the TextEditingController.
                          //"Your Name" + nameController.text + "\n Your Password "+ passwordController.text
                          content: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                    "You Selected " + dropdownvalue.toString()),
                              )
                            ],
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: new Text('OK'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            TextButton(
                              child: new Text('Cancel'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
