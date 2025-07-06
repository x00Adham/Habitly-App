import 'package:flutter/material.dart';
import 'package:habitly/constants/colors.dart';
import 'package:habitly/widgets/my_app_bar.dart';
import 'package:habitly/widgets/my_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            MyAppBar(),
            SizedBox(height: 20),
            MyContainer(
              children: [
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
