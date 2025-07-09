import 'package:flutter/material.dart';

class HomePageViewModel extends ChangeNotifier {
  final ScrollController scrollController = ScrollController();

  void navigateToAddHabitPage(BuildContext context) {
    // Navigation logic will be handled by the View, but
    // the ViewModel can expose a method to trigger it.
    // This keeps the ViewModel testable without BuildContext.
    notifyListeners(); // Placeholder, actual navigation is in View
  }

  // Dispose scrollController when the ViewModel is disposed
  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
