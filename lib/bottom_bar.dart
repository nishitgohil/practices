import 'package:flutter/material.dart';
import 'radiosample1.dart';
import 'checkbox.dart';
import 'DropdownSamplePage.dart';


class bottom_bar_Page extends StatefulWidget {
  @override
  bottom_bar_State createState() => bottom_bar_State();
}

class bottom_bar_State extends State<bottom_bar_Page> {
  static int _selectedIndex = 0;

  void _onItemTap(int index) {
    setState(() {
      print(_selectedIndex);
      _selectedIndex = index;
    });

    if (index == 0) {
      Navigator.pop(context);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => RadioSample()));
    } else if (index == 1) {
      Navigator.pop(context);
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => CheckBoxSamplePage()));
    } else if (index == 2) {
      Navigator.pop(context);
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => DropdownSamplePage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.radio_button_checked_rounded),
          label: 'Radio',
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.check_box),
          label: 'CheckBox',
          backgroundColor: Colors.green,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_drop_down),
          label: 'DropDown',
          backgroundColor: Colors.purple,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Setting',
          backgroundColor: Colors.orange,
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.black,
      onTap: _onItemTap,
    );
  }
}
