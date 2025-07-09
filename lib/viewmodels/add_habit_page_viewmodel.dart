import 'package:flutter/material.dart';

class AddHabitPageViewModel extends ChangeNotifier {
  // Example property - in a real scenario, this would hold data like habit name, selected icon, frequency, etc.
  String _habitName = "";
  String get habitName => _habitName;

  void setHabitName(String name) {
    _habitName = name;
    notifyListeners();
  }

  // Add other properties and methods for icon selection, frequency, reminder, goal, etc.
  // For example:
  // IconData? _selectedIcon;
  // IconData? get selectedIcon => _selectedIcon;
  // void setSelectedIcon(IconData icon) {
  //   _selectedIcon = icon;
  //   notifyListeners();
  // }

  // void saveHabit() {
  //   // Logic to save the habit data
  //   // This might involve interacting with a repository or service
  //   print("Habit Saved: $habitName"); // Placeholder
  // }
}
