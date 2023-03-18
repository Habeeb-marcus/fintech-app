import 'dart:ffi';

import 'package:fintech_home/screens/card_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screens/home_screen.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
   int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
   
      List<Widget> widgetOptions= [
        MyHomePage(),
        CardScreen(),
        MyHomePage(),
        MyHomePage(),
    ];
    void onTabTapped(index){
      setState(() {
        selectedIndex = index;
      });
    }
    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black12,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey ,
        showSelectedLabels: true,
        showUnselectedLabels: true ,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex ,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
            ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.creditCard),
            label: 'Cards'
            ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.cog),
            label: 'Settings'
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'
            ),
        ]),
    );
  }
}