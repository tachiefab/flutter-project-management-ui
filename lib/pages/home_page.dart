// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:prohubappui/pages/home_screen.dart';
import 'package:prohubappui/pages/task_list_page.dart';
import 'package:prohubappui/widgets/app_bar.dart';
import 'package:prohubappui/widgets/bottom_bar_navigation_widget.dart';
import 'package:prohubappui/widgets/project_card.dart';
import 'package:prohubappui/widgets/time_management_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // select index
  int _selectedIndex = 0;

  void _onTap(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _pages = [HomeScreen(), TaskListPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: _pages[_selectedIndex],

      // buttom bar navigation
      // bottomNavigationBar: BottomBarNavigationWidget(),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey.shade200,
        // selectedItemColor: Colors.pink,
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
      ),
    );
  }
}
