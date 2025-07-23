// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TimeManagementWidget extends StatelessWidget {
  const TimeManagementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        // days of the month
        Text(
          "Sep 11",
          style: TextStyle(color: Colors.grey),
        ),

        SizedBox(
          width: 20,
        ),

        // days of the month
        Text(
          "Sep 12",
          style: TextStyle(color: Colors.grey),
        ),

        SizedBox(
          width: 20,
        ),

        // days of the month
        Text(
          "Sep 13",
          style: TextStyle(color: Colors.grey),
        ),

        SizedBox(
          width: 10,
        ),

        // days of the month
        Text(
          "Sep 14",
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),

        SizedBox(
          width: 10,
        ),

        // days of the month
        Text(
          "Sep 15",
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(
          width: 10,
        ),

        // days of the month
        Text(
          "Sep 16",
          style: TextStyle(color: Colors.grey),
        ),

        SizedBox(
          width: 10,
        ),

        // days of the month
        Text(
          "Sep 17",
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
