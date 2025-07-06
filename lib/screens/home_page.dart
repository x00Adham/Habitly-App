import 'package:flutter/material.dart';
import 'package:habitly/constants/colors.dart';
import 'package:habitly/constants/icons_list.dart';
import 'package:habitly/models/icon_model.dart';
import 'package:habitly/widgets/my_app_bar.dart';
import 'package:habitly/widgets/my_circular_icon.dart';
import 'package:habitly/widgets/my_container.dart';
import 'package:habitly/widgets/week_progress.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Expanded(
              child: ListView.builder(
                itemCount: iconsList.length,
                itemBuilder: (context, index) {
                  late IconModel icon = iconsList[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: MyContainer(
                      children: [
                        Row(
                          children: [
                            MyCircleIcon(
                              backgroundColor: icon.backgroundColor,
                              icon: icon.icon,
                              iconColor: icon.iconColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
