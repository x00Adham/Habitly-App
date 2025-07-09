import 'package:flutter/material.dart';
import 'package:habitly/constants/colors.dart';
import 'package:habitly/screens/add_habit_page.dart';
import 'package:habitly/widgets/custom_floating_button.dart';
import 'package:scroll_to_hide/scroll_to_hide.dart';
import 'package:habitly/widgets/listview_of_habits.dart';
import 'package:habitly/widgets/my_app_bar.dart';

import 'package:habitly/widgets/week_progress.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ScrollToHide(
        scrollController: _scrollController,
        

        height: 50, // Adjust height as needed
        hideDirection: Axis.vertical, // Add this line
        child: CustomFloatingButton(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddHabitPage()),
            );
          },
        ),
      ),
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
            ListveiwOfHabits(scrollController: _scrollController),
          ],
        ),
      ),
    );
  }
}
