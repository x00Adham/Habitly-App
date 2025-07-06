import 'package:flutter/material.dart';
import 'package:habitly/constants/colors.dart';
import 'package:habitly/widgets/my_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      body: Column(
        children: [
          MyAppBar(),
        ],
      ),
    );
  }
}

