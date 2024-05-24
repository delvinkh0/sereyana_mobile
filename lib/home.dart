import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:serenaya_2/pages/dashboard.dart';
import 'package:serenaya_2/pages/mindfullness.dart';
import 'package:serenaya_2/pages/profile.dart';
import 'package:serenaya_2/pages/test.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _pages = <Widget>[
    HomePage(),
    TestPage(),
    MIndfullnessPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Color(0xFF132043), // Warna status bar
      ),
      child: Scaffold(
        body: SafeArea(
          child: Container(
            color: const Color(0xFFF8DADD),
            child: _pages.elementAt(_selectedIndex),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.check_box),
              label: 'Take a Test',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note),
              label: 'Mindfullness',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xFF132043),
          unselectedItemColor: Colors.black,
          selectedIconTheme: const IconThemeData(color: Color(0xFF132043)),
          unselectedIconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: const Color(0xFFF8DADD),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}
