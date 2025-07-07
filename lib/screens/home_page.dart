import 'package:flutter/material.dart';
import 'package:habitly/constants/colors.dart';
import 'package:habitly/widgets/custom_floating_button.dart';

import 'package:habitly/widgets/listview_of_habits.dart';
import 'package:habitly/widgets/my_app_bar.dart';

import 'package:habitly/widgets/week_progress.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloatingButton(onTap: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: maincolor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyAppBar(),
            SizedBox(height: 20),
            WeekProgress(),
            SizedBox(height: 20),
            Text(
              "Today's Habits",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 5),
            listveiwOfHabits(),
          ],
        ),
      ),
    );
  }
}
