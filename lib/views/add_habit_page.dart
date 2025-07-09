import 'package:flutter/material.dart';
import 'package:habitly/viewmodels/add_habit_page_viewmodel.dart';
import 'package:habitly/widgets/days_of_week_widger.dart';
import 'package:habitly/widgets/frequency_widget.dart';
import 'package:habitly/widgets/icons_grid.dart';
import 'package:habitly/widgets/my_container.dart';
import 'package:habitly/widgets/my_text_field.dart';
import 'package:habitly/widgets/goal_widget.dart';
import 'package:habitly/widgets/new_habit_bar.dart';
import 'package:habitly/widgets/reminder_widget.dart';
import 'package:provider/provider.dart';

class AddHabitPage extends StatelessWidget {
  const AddHabitPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the ViewModel
    // final viewModel = Provider.of<AddHabitPageViewModel>(context);
    // At this point, we are not yet using the viewModel directly in the UI build method,
    // but it's ready to be used. For example, MyTextField could take viewModel.setHabitName
    // as its onChanged callback.

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              NewHabitBar(
                // Example: If NewHabitBar had a save button, its onPressed could call:
                // () => Provider.of<AddHabitPageViewModel>(context, listen: false).saveHabit(),
              ),
              const SizedBox(height: 20),
              MyContainer(
                paddingH: 20,
                paddingV: 20,
                children: [
                  const Text(
                    "Habit Name",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  MyTextField(
                      // Example:
                      // onChanged: (value) => Provider.of<AddHabitPageViewModel>(context, listen: false).setHabitName(value),
                      // initialValue: Provider.of<AddHabitPageViewModel>(context).habitName,
                      ),
                  const SizedBox(height: 20),
                  const Text(
                    "Choose Icon",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  IconsGrid(
                      // Example:
                      // onIconSelected: (icon) => Provider.of<AddHabitPageViewModel>(context, listen: false).setSelectedIcon(icon),
                      // selectedIcon: Provider.of<AddHabitPageViewModel>(context).selectedIcon,
                      ),
                  const Text(
                    "Frequency",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 5),
                  FrequencyWidget(), // This and other custom widgets would internally use the ViewModel
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
