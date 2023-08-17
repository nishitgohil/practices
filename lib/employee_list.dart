import 'package:flutter/material.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> comname = [
    'Adidas',
    'Nike',
    'Google',
  ];

  List<String> comsales = [
    '200',
    '300',
    '400',
  ];

  List<String> comheadquarter = [
    'Berlin',
    'Hamburg',
    'München',
  ];

  List<String> comemployee = [
    '800',
    '850',
    '900',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title:  Text('data'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: <Widget>[
            companyCard(
              comname[0],
              comsales[0],
              comheadquarter[0],
              comemployee[0],
            ),
          ],
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

@override
Widget companyCard(
    String name, String sales, String headquarter, String employee) {
  return Stack(
    children: <Widget>[
      Container(
        margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 15.0),
        height: 180,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28.0),
          color: Colors.green,
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 11.0, 11.0, 35.00),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    'Sales:',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      sales,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    'Headquarters:',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      headquarter,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    'Employee:',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    employee,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
