import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:habitly/constants/colors.dart';
import 'package:habitly/screens/home_page.dart';

void main() {
  runApp(const HabitlyApp());
}

class HabitlyApp extends StatelessWidget {
  const HabitlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Hide Android navigation bar
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Habitly',
      theme: ThemeData(fontFamily: 'Inter', primaryColor: maincolor),
      home: const HomePage(),
    );
  }
}
