import 'package:flutter/material.dart';
import '/BottomNavPages/Page1.dart';
import '/BottomNavPages/Page2.dart';
import '/BottomNavPages/Page3.dart';
import '/BottomNavPages/Page4.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

     const List<Widget> pages = <Widget>
     [
       Page1(title: "Page1",),
       Page2(title: "Page2",),
       Page3(title: "Page3",),
       Page4(title: "Page4",),
    ];

    return Scaffold(
      body: Center(
        child: pages.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
        elevation: 25, //border light dark
        iconSize: 25, //size of icon
        selectedFontSize: 10,

        // this is a code which execute when the items will select
        selectedIconTheme: const IconThemeData(color: Colors.black, size: 27),
        selectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400),

        items: const <BottomNavigationBarItem>[
          //first Page
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.black,),
              label: 'Home'
          ),

          //Second Page
          BottomNavigationBarItem(
            icon: Icon(Icons.groups, color: Colors.black),
            label: 'Classroom',
          ),

          //Third Page
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart_rounded, color: Colors.black),
            label: 'Explore',
          ),

          //Fourth Page
          BottomNavigationBarItem(
            icon: Icon(Icons.school_outlined, color: Colors.black),
            label: 'About GPA',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,

      )
    );
  }
}
