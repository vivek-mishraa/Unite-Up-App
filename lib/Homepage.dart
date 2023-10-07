// ignore_for_file: file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:unite_up/page1.dart';
import 'package:unite_up/page2.dart';
import 'package:unite_up/page3.dart';
import 'package:unite_up/page4.dart';
import 'package:unite_up/page5.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    page1(),
    const page2(),
    const page3(),
    const page4(),
    const page5(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomNavBar,
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
                backgroundColor: Colors.blue),
            const BottomNavigationBarItem(
                icon: Icon(Icons.search), label: 'Search'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person_add_sharp), label: 'connect'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.chat), label: 'chat'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'profile')
          ]),
    );
  }
}
