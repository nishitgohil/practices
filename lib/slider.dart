import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home:MySliderApp(),
    );
  }
}
class MySliderApp extends StatefulWidget{
  const MySliderApp({Key? key}) : super(key:key);
  @override
  _MySliderAppState createState() => _MySliderAppState();
}
class _MySliderAppState extends State<MySliderApp>{
  int _value =6;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text('Flutter Slider Demo'),

      ),
      body:Padding(
        padding:const EdgeInsets.all(15.0),
        child:Center(
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children:[
              const Icon(
                Icons.volume_up,
                size:40,
              ),
            Expanded(
              child:Slider(
                value: _value.toDouble(),
                min:1.0,
                max:25.0,
                divisions: 10,
                activeColor: Colors.blueAccent,
                inactiveColor: Colors.grey,
                label:'Set volume value',
                onChanged:(double newValue){
                  setState((){
                    _value= newValue.round();
                  });
                },
                semanticFormatterCallback: (double newValue){
                  return '${newValue.round()}dollars';
                }
              )
            ),
            ]
          )
        ),
      )
    );
  }
}