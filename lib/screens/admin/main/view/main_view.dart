import 'package:flutter/material.dart';
import 'package:flutter_base/screens/screens.dart';

class Mainview extends StatefulWidget {
  const Mainview({Key? key}) : super(key: key);

  @override
  State<Mainview> createState() => _MainviewState();
}

class _MainviewState extends State<Mainview> {
  int _seletedIndex = 0;

  static const List<Widget> _widgetScreen = <Widget>[
    HomeView(),
    ProfileView(),
    SettingsView()
  ];

  void _selectIndexItem(int index) {
    setState(() {
      _seletedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetScreen.elementAt(_seletedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.countertops), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
        currentIndex: _seletedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _selectIndexItem,
      ),
    );
  }
}
