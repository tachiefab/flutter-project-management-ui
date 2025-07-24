// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProjectStatusWidget extends StatelessWidget {
  final String statusLabel;
  final String statusNumber;
  final Color bigContainerColor;
  final Color smallContainerColor;
  final Color bigContainerTextColor;
  final Color smallContainerTextColor;

  const ProjectStatusWidget(
      {super.key,
      required this.statusNumber,
      required this.statusLabel,
      required this.bigContainerColor,
      required this.smallContainerColor,
      required this.bigContainerTextColor,
      required this.smallContainerTextColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: bigContainerColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all()),
      child: Row(
        children: [
          SizedBox(
            width: 5,
          ),
          Text(
            statusLabel,
            style: TextStyle(
              color: bigContainerTextColor,
              fontSize: 12,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: smallContainerColor,
              shape: BoxShape.circle,
            ),
            child: Text(
              statusNumber,
              style: TextStyle(color: smallContainerTextColor, fontSize: 12),
            ),
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}
