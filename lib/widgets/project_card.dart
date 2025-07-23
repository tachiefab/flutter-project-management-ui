// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String projectName;
  final String teamName;
  final String member1Image;
  final String member2Image;
  final int remaingMemberNumber;
  final color;

  const ProjectCard(
      {super.key,
      required this.projectName,
      required this.teamName,
      required this.member1Image,
      required this.member2Image,
      required this.remaingMemberNumber,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        padding: const EdgeInsets.all(25),
        width: 250,
        // width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              projectName,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(teamName),
            const SizedBox(height: 15),

            // Vertical avatar stack
            SizedBox(
              height: 90,
              width: 40,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 0,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(member1Image),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(member2Image),
                    ),
                  ),
                  Positioned(
                    top: 60,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.orange,
                      child: Text(
                        "+$remaingMemberNumber",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // View Project Button
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'View project',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.purple.shade200),
                    child: const Icon(Icons.arrow_forward,
                        color: Colors.white, size: 18),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
