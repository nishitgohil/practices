import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'emp.dart';
void main() {
  runApp(MaterialApp(home: employeeWidget(),));
}
class employee
{

  employee( {this.name="" , this.desgn="" , this.salary=""} );

  String name,desgn,salary;

}