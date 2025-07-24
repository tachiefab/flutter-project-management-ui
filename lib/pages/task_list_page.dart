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

            // .................list of tasks........................//
            Expanded(
              child: ListView(
                children: [
                  // ................. first container........................//
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(bottom: 10),
                    // customizing container
                    // height: 200,
                    // width: ,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // row of icon and priority
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // adding an image
                            Image.asset(
                              "assets/images/Figma-logo.png",
                              height: 15,
                            ),
                            // second row
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_drop_up,
                                  size: 20,
                                ),
                                Text(
                                  "High",
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),

                        // adding a space
                        SizedBox(
                          height: 15,
                        ),

                        // task title
                        Text(
                          "Create a visual style guide",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        // adding a space
                        SizedBox(
                          height: 15,
                        ),

                        // row of teams and comments and date
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // row of pictures uisng stack
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // Stack
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    // first image
                                    Positioned(
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundImage:
                                            AssetImage("assets/images/man.png"),
                                      ),
                                    ),

                                    // second image
                                    Positioned(
                                      left: 20,
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundImage: AssetImage(
                                            "assets/images/woman.jpg"),
                                      ),
                                    ),

                                    // a third image
                                    Positioned(
                                      left: 45,
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundImage: AssetImage(
                                            "assets/images/ai-generated.png"),
                                      ),
                                    ),

                                    // a third image
                                    Positioned(
                                      left: 70,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        radius: 15,
                                        child: Text(
                                          "+5",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            // Row of comments and dates
                            Row(
                              children: [
                                // comment icon
                                Row(
                                  children: [
                                    Icon(Icons.message,
                                        size: 18, color: Colors.grey.shade800),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "2",
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 13),
                                    ),
                                  ],
                                ),

                                SizedBox(
                                  width: 20,
                                ),

                                Row(
                                  children: [
                                    Icon(Icons.calendar_month,
                                        size: 18, color: Colors.grey.shade800),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "10 jan",
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 12),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),

                        // column or row and progress text
                        SizedBox(
                          height: 15,
                        ),

                        // row for progress bar
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 60,
                              height: 8,
                              margin: EdgeInsets.symmetric(
                                  horizontal:
                                      4), //same as using size box with a width
                              decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              width: 60,
                              height: 8,
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              width: 60,
                              height: 8,
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              width: 40,
                              height: 8,
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),

                        // adding a space
                        SizedBox(
                          height: 5,
                        ),

                        // adding  row of progress tex and the value
                        Row(
                          children: [
                            Text(
                              "Progress",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.shade500,
                              ),
                            ),
                            // adding a spacer
                            Spacer(),
                            Text(
                              "7",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                // color: Colors.grey.shade500,
                              ),
                            ),
                            Text(
                              "/10",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  // ................. second container........................//
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(bottom: 10),
                    // customizing container
                    // height: 200,
                    // width: ,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // row of icon and priority
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // adding an image
                            Image.asset(
                              "assets/images/Figma-logo.png",
                              height: 15,
                            ),
                            // second row
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_drop_up,
                                  size: 20,
                                ),
                                Text(
                                  "Low",
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),

                        // adding a space
                        SizedBox(
                          height: 15,
                        ),

                        // task title
                        Text(
                          "Medical Dashboard UI",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        // adding a space
                        SizedBox(
                          height: 15,
                        ),

                        // row of teams and comments and date
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // row of pictures uisng stack
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // Stack
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    // first image
                                    Positioned(
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundImage: AssetImage(
                                            "assets/images/technology.jpg"),
                                      ),
                                    ),

                                    // second image
                                    Positioned(
                                      left: 20,
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundImage:
                                            AssetImage("assets/images/man.png"),
                                      ),
                                    ),

                                    // a third image
                                    Positioned(
                                      left: 45,
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundImage: AssetImage(
                                            "assets/images/ai-generated.png"),
                                      ),
                                    ),

                                    // a third image
                                    Positioned(
                                      left: 70,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        radius: 15,
                                        child: Text(
                                          "+7",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            // Row of comments and dates
                            Row(
                              children: [
                                // comment icon
                                Row(
                                  children: [
                                    Icon(Icons.message,
                                        size: 18, color: Colors.grey.shade800),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "2",
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 13),
                                    ),
                                  ],
                                ),

                                SizedBox(
                                  width: 20,
                                ),

                                Row(
                                  children: [
                                    Icon(Icons.calendar_month,
                                        size: 18, color: Colors.grey.shade800),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "10 jan",
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 12),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),

                        // column or row and progress text
                        SizedBox(
                          height: 15,
                        ),

                        // row for progress bar
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 60,
                              height: 8,
                              margin: EdgeInsets.symmetric(
                                  horizontal:
                                      4), //same as using size box with a width
                              decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              width: 60,
                              height: 8,
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              width: 60,
                              height: 8,
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              width: 40,
                              height: 8,
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),

                        // adding a space
                        SizedBox(
                          height: 5,
                        ),

                        // adding  row of progress tex and the value
                        Row(
                          children: [
                            Text(
                              "Progress",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.shade500,
                              ),
                            ),
                            // adding a spacer
                            Spacer(),
                            Text(
                              "7",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                // color: Colors.grey.shade500,
                              ),
                            ),
                            Text(
                              "/10",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  // ................. third container........................//
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(bottom: 10),
                    // customizing container
                    // height: 200,
                    // width: ,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // row of icon and priority
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // adding an image
                            Image.asset(
                              "assets/images/Figma-logo.png",
                              height: 15,
                            ),
                            // second row
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_drop_up,
                                  size: 20,
                                ),
                                Text(
                                  "High",
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),

                        // adding a space
                        SizedBox(
                          height: 15,
                        ),

                        // task title
                        Text(
                          "Slicing Landing page",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        // adding a space
                        SizedBox(
                          height: 15,
                        ),

                        // row of teams and comments and date
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // row of pictures uisng stack
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // Stack
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    // first image
                                    Positioned(
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundImage: AssetImage(
                                            "assets/images/ai-generated.png"),
                                      ),
                                    ),

                                    // second image
                                    Positioned(
                                      left: 20,
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundImage: AssetImage(
                                            "assets/images/woman.jpg"),
                                      ),
                                    ),

                                    // a third image
                                    Positioned(
                                      left: 45,
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundImage:
                                            AssetImage("assets/images/man.png"),
                                      ),
                                    ),

                                    // a third image
                                    Positioned(
                                      left: 70,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        radius: 15,
                                        child: Text(
                                          "+9",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            // Row of comments and dates
                            Row(
                              children: [
                                // comment icon
                                Row(
                                  children: [
                                    Icon(Icons.message,
                                        size: 18, color: Colors.grey.shade800),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "2",
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 13),
                                    ),
                                  ],
                                ),

                                SizedBox(
                                  width: 20,
                                ),

                                Row(
                                  children: [
                                    Icon(Icons.calendar_month,
                                        size: 18, color: Colors.grey.shade800),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "10 jan",
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 12),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),

                        // column or row and progress text
                        SizedBox(
                          height: 15,
                        ),

                        // row for progress bar
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 60,
                              height: 8,
                              margin: EdgeInsets.symmetric(
                                  horizontal:
                                      4), //same as using size box with a width
                              decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              width: 60,
                              height: 8,
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              width: 60,
                              height: 8,
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              width: 40,
                              height: 8,
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),

                        // adding a space
                        SizedBox(
                          height: 5,
                        ),

                        // adding  row of progress tex and the value
                        Row(
                          children: [
                            Text(
                              "Progress",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.shade500,
                              ),
                            ),
                            // adding a spacer
                            Spacer(),
                            Text(
                              "7",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                // color: Colors.grey.shade500,
                              ),
                            ),
                            Text(
                              "/10",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
