import 'package:flutter/material.dart';
import 'package:habitly/constants/colors.dart';
import 'package:habitly/views/add_habit_page.dart';
import 'package:habitly/widgets/custom_floating_button.dart';
import 'package:provider/provider.dart';
import 'package:scroll_to_hide/scroll_to_hide.dart';
import 'package:habitly/widgets/listview_of_habits.dart';
import 'package:habitly/widgets/my_app_bar.dart';
import 'package:habitly/viewmodels/home_page_viewmodel.dart';
import 'package:habitly/widgets/week_progress.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the ViewModel
    final viewModel = Provider.of<HomePageViewModel>(context);

    return Scaffold(
      floatingActionButton: ScrollToHide(
        scrollController: viewModel.scrollController,
        height: 50, // Adjust height as needed
        hideDirection: Axis.vertical, // Add this line
        child: CustomFloatingButton(
          onTap: () {
            // viewModel.navigateToAddHabitPage(context); // ViewModel shouldn't know about context
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
            const SizedBox(height: 20),
            WeekProgress(),
            const SizedBox(height: 20),
            const Text(
              "Today's Habits",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 5),
            ListveiwOfHabits(scrollController: viewModel.scrollController),
          ],
        ),
      ),
    );
  }
}
