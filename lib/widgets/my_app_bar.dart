import 'package:flutter/material.dart';
import 'package:habitly/constants/colors.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
            Text(
              "Track your daily progress",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: mygray,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [mypink, myblue],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
              ),
            ),
            child: Icon(Icons.person, size: 25, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
