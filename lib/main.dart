import 'package:flutter/material.dart';
import 'package:habitly/constants/colors.dart';
import 'package:habitly/screens/home_page.dart';

void main() {
  runApp(const HabitlyApp());
}

class HabitlyApp extends StatelessWidget {
  const HabitlyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Habitly',
      theme: ThemeData(fontFamily: 'Inter', primaryColor: maincolor),
      home: const HomePage(),
    );
  }
}
