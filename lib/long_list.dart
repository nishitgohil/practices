import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  //   Employees: List<String>.generate(12, (Employees) => "Name: $Employees"),
  //   Sub: List<String>.generate(12, (Sub) => "Name: $Sub"),
  // ));
}

class Employee {
  const Employee({this.name = "", this.desgn = ""});

  final String name, desgn;
}

class MyApp extends StatelessWidget {
  // final List<String> Employees;
  // final List<String> Sub;
  // MyApp({Key? key, required this.Employees,required this.Sub}) : super(key: key);

  List<Employee> elist = [
    new Employee(name: "Nishit", desgn: "CEO"),
    new Employee(name: "Nishit", desgn: "Manager"),
    new Employee(name: "Nishit", desgn: "Employee"),
  ];

// null ;//= new List <Employee>();
  @override
  Widget build(BuildContext context) {
    //elist?.add(new Employee (name: "Nishit", desgn: "Manager"));

    //elist?.add(new Employee (name: "Nishit", desgn: "Manager"));

    print(elist.length);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("Employees Details"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: ListView.builder(
            itemCount: elist.length,
            itemBuilder: (BuildContext, index) {
              return Card(
                child: ListTile(
                  contentPadding: EdgeInsets.all(10),
                  title: Text(elist[index].name),
                  subtitle: Text(elist[index].desgn),
                  leading: Icon(Icons.person),
                  trailing: Icon(
                    Icons.arrow_right,
                    color: Colors.redAccent[400],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
