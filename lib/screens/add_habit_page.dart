import 'package:flutter/material.dart';

import 'package:habitly/widgets/days_of_week_widger.dart';
import 'package:habitly/widgets/frequency_widget.dart';
import 'package:habitly/widgets/icons_grid.dart';
import 'package:habitly/widgets/my_container.dart';
import 'package:habitly/widgets/my_text_field.dart';
import 'package:habitly/widgets/goal_widget.dart';
import 'package:habitly/widgets/new_habit_bar.dart';
import 'package:habitly/widgets/reminder_widget.dart';

class AddHabitPage extends StatefulWidget {
  const AddHabitPage({super.key});
  // Removed reminderEnabled from here
  @override
  State<AddHabitPage> createState() => _AddHabitPageState();
}

class _AddHabitPageState extends State<AddHabitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              NewHabitBar(),
              SizedBox(height: 20),
              MyContainer(
                paddingH: 20,
                paddingV: 20,
                children: [
                  Text(
                    "Habit Name",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10),
                  MyTextField(),
                  SizedBox(height: 20),
                  Text(
                    "Choose Icon",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10),
                  IconsGrid(),
                  Text(
                    "Frequency",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 5),
                  FrequencyWidget(),
                  DaysOfWeekWidget(),
                  ReminderWidget(),
                  GoalWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
