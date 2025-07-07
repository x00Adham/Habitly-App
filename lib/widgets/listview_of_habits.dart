 import 'package:flutter/material.dart';
import 'package:habitly/constants/icons_list.dart';
import 'package:habitly/widgets/hapit_widget.dart';

 listveiwOfHabits() {
    return Expanded(
            child: ListView.builder(
              itemCount: iconsList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: HabitWidget(),
                );
              },
            ),
          );
  }
