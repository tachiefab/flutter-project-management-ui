import 'package:flutter/material.dart';
import 'package:prohubappui/widgets/app_bar.dart';
import 'package:prohubappui/widgets/project_card.dart';
import 'package:prohubappui/widgets/time_management_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),

              // 1. App bar
              AppBarWidget(),

              SizedBox(height: 40),

              // 2. Projects title and "+ Add" button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Projects",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "+ Add",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )
                ],
              ),

              SizedBox(height: 5),
              Text(
                "You have 6 projects",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),

              SizedBox(height: 25),

              // 3. Project card
              Container(
                height: 280,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProjectCard(
                      projectName: "Ofspace",
                      teamName: "Dribble team",
                      member1Image: "assets/images/woman.jpg",
                      member2Image: "assets/images/technology.jpg",
                      remaingMemberNumber: 20,
                      color: Colors.lightBlue.shade100,
                    ),
                    ProjectCard(
                      projectName: "Online",
                      teamName: "Course apps",
                      member1Image: "assets/images/man.png",
                      member2Image: "assets/images/ai-generated.png",
                      remaingMemberNumber: 8,
                      color: Colors.purple.shade100,
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 25,
              ),

              Text(
                "Time Management",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              SizedBox(
                height: 10,
              ),

              // adding days of the months (Will change it to listview)
              SizedBox(
                  height: 20,
                  // color: Colors.yellow,
                  child: TimeManagementWidget()),

              // adding sized box
              SizedBox(
                height: 25,
              ),

              // adding show time row
              Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.pink.shade100,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.check)),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Show time",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // pushing text widget to far right
                  Spacer(),

                  Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        // color: Colors.grey.shade200,
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          // SizedBox(
                          //   width: 5,
                          // ),
                          Icon(
                            Icons.arrow_back_ios,
                            color: Colors.grey.shade400,
                            size: 20,
                          ),
                          // SizedBox(
                          //   width: 5,
                          // ),
                          Text(
                            "Today",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          // SizedBox(
                          //   width: 5,
                          // ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey.shade400,
                            size: 20,
                          ),
                          // SizedBox(
                          //   width: 5,
                          // ),
                        ],
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
