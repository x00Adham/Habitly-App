import 'package:flutter/material.dart';
import 'package:habitly/constants/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: maincolor,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Habits",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                // SizedBox(height: 4),
                Text(
                  "Track your daily progress",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff666666),
                  ),
                ),
              ],
            ),
            CircleAvatar(backgroundColor: Color(0xff618EF7)),
          ],
        ),
      ),
    );
  }
}
