import 'package:flutter/material.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("Switch"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: const Center(
          child: SwitchScreen(),
        ),
      ),
    );
  }
}

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({Key? key}) : super(key: key);

  @override
  SwitchClass createState() => SwitchClass();
}

class SwitchClass extends State<SwitchScreen> {
  bool isSwitch = false;
  var textValue = 'Switch is OFF ';

  void toggleSwitch(bool value) {
    setState(() {
      isSwitch = !isSwitch;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Transform.scale(
          scale: 2,
          child: Switch(
            onChanged: toggleSwitch,
            value: isSwitch,
            activeColor: Colors.white,
            activeTrackColor: Color.fromARGB(206, 0, 255, 8),
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: Colors.white30,
          ),
        ),
      ],
    );
  }
}
