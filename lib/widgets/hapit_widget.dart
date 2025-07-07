import 'package:flutter/material.dart';
import 'package:habitly/widgets/my_checkbox.dart';
import 'package:habitly/widgets/my_circular_icon.dart';
import 'package:habitly/widgets/my_container.dart';

class HabitWidget extends StatelessWidget {
  const HabitWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      paddingH: 10,
      paddingV: 0,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: MyCircleIcon(name: "arrow"),
          title: Text(
            "Morning Run",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            "5km • 7:00 AM",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          ),
          trailing: MyCheckbox(isChecked: true),
        ),
      ],
    );
  }
}
