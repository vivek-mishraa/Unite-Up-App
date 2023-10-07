import 'package:flutter/material.dart';
import 'package:unite_up/Homepage.dart';

void main() => runApp(const Homescreen());

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return (const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    ));
  }
}
