import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:habitly/constants/colors.dart';
import 'package:habitly/viewmodels/add_habit_page_viewmodel.dart';
import 'package:habitly/viewmodels/home_page_viewmodel.dart';
import 'package:habitly/views/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  // Ensure bindings are initialized before anything else
  WidgetsFlutterBinding.ensureInitialized();
  // Hide Android navigation bar
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomePageViewModel()),
        ChangeNotifierProvider(create: (_) => AddHabitPageViewModel()),
        // Add other ViewModels here as needed
      ],
      child: const HabitlyApp(),
    ),
  );
}

class HabitlyApp extends StatelessWidget {
  const HabitlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Habitly',
      theme: ThemeData(fontFamily: 'Inter', primaryColor: maincolor),
      home: const HomePage(), // HomePage will now be able to access HomePageViewModel via Provider
    );
  }
}
