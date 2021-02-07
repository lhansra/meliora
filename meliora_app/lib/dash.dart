import 'package:flutter/material.dart';

class DashPage extends StatefulWidget {
  @override
  _DashPageState createState() => _DashPageState();
}

class _DashPageState extends State<DashPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Dashboard',
      style: optionStyle,
    ),
    Text(
      'Library',
      style: optionStyle,
    ),
    Text(
      'Resources',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meliora'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/checkinicon.png'),
            ),
            label: 'Check In',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/hpicon.png'),
            ),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/extraicon.png'),
            ),
            label: 'Resources',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/profileicon.png'),
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.cyan[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
