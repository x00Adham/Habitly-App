 import 'package:flutter/material.dart';
import 'package:habitly/constants/icons_list.dart';
import 'package:habitly/widgets/hapit_widget.dart';

class ListveiwOfHabits extends StatefulWidget {
  const ListveiwOfHabits({super.key, required this.scrollController});
  final ScrollController scrollController;

  @override
  State<ListveiwOfHabits> createState() => _ListveiwOfHabitsState();
}

class _ListveiwOfHabitsState extends State<ListveiwOfHabits> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
            child: ListView.builder(
                controller: widget.scrollController,
              
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
}
