// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BottomBarNavigationWidget extends StatelessWidget {
  const BottomBarNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.grey.shade200,
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
            color: Colors.grey,
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
