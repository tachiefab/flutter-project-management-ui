// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BottomBarNavigationWidget extends StatefulWidget {
  const BottomBarNavigationWidget({super.key});

  @override
  State<BottomBarNavigationWidget> createState() =>
      _BottomBarNavigationWidgetState();
}

class _BottomBarNavigationWidgetState extends State<BottomBarNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    // select index
    int _selectedIndex = 0;

    void _onTap(index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.grey.shade200,
      // selectedItemColor: Colors.pink,
      // selectedItemColor: Colors.pink, // selected icon and label color

      onTap: _onTap,
      items: [
        // home
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              // color: Colors.grey,
            ),
            label: ""),

        // projects
        BottomNavigationBarItem(
          icon: Icon(
            Icons.folder,
            // color: Colors.grey,
          ),
          label: "",
        ),

        // add project
        BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.all(8),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.black),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
            ),
            label: ""),

        // teams
        BottomNavigationBarItem(
          icon: Icon(
            Icons.calendar_month,
            color: Colors.grey,
          ),
          label: "",
        ),

        // profile
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.grey,
          ),
          label: "",
        )
      ],
    );
  }
}
