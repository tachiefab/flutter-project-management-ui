// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:prohubappui/widgets/project_status_widget.dart';

class TaskListPage extends StatelessWidget {
  const TaskListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,

      // app bar
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink.shade100,
        title: Text(
          "Task List",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Icon(Icons.arrow_back),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink.shade200,
              ),
              child: Icon(
                Icons.more_vert_rounded,
                size: 35,
                // color: Colors.pink.shade200,
              ),
            ),
          )
        ],
      ),

      // body
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // task status and comments
            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // complete status
                  ProjectStatusWidget(
                    bigContainerColor: Colors.black87,
                    statusLabel: "COMPLETE",
                    bigContainerTextColor: Colors.white,
                    smallContainerColor: Colors.pink.shade200,
                    statusNumber: "20",
                    smallContainerTextColor: Colors.black87,
                  ),

                  SizedBox(
                    width: 5,
                  ),

                  // to do status
                  ProjectStatusWidget(
                    bigContainerColor: Colors.pink.shade100,
                    statusLabel: "TO DO",
                    bigContainerTextColor: Colors.black87,
                    smallContainerColor: Colors.black87,
                    statusNumber: "20",
                    smallContainerTextColor: Colors.white,
                  ),

                  // comments
                  ProjectStatusWidget(
                    bigContainerColor: Colors.pink.shade100,
                    statusLabel: "COMMENTS",
                    bigContainerTextColor: Colors.black87,
                    smallContainerColor: Colors.black87,
                    statusNumber: "10",
                    smallContainerTextColor: Colors.white,
                  ),
                ],
              ),
            ),

            // adding a space
            SizedBox(
              height: 25,
            ),

            // list of tasks
            Container(
              // customizing container
              height: 200,
              // width: ,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),

              // child: ,
            )
          ],
        ),
      ),
    );
  }
}
