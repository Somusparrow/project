import 'package:abc/BMI.dart';
import 'package:abc/Instagram.dart';
import 'package:abc/amzon.dart';
import 'package:abc/amzon1.dart';
import 'package:abc/bottom1page.dart';
import 'package:abc/bottom3.dart';
import 'package:abc/bottom4.dart';
import 'package:abc/calculator.dart';
import 'package:abc/gst.dart';
import 'package:abc/spotify.dart';
import 'package:flutter/material.dart';


class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {

  int _intex = 0;

  final pages = [
    calculator(),
    bmical(),
    gst()
  ];

  void tap(qwe)
  {
    setState(() {
      _intex = qwe;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_intex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "settings"),
          BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'menu'),
        ],
        currentIndex: _intex,
        onTap: tap,
      ),
    );
  }
}
