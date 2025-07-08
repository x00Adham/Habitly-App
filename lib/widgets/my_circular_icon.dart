import 'package:flutter/material.dart';
import 'package:habitly/constants/icons_list.dart';
import 'package:habitly/models/icon_model.dart';

class MyCircleIcon extends StatelessWidget {
  const MyCircleIcon({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    // Find the IconModel from iconsList that matches the provided name.
    final IconModel iconModel = iconsList.firstWhere(
      (item) => item.name == (name.isNotEmpty ? name : "arrow"),
    );

    return CircleAvatar(
      foregroundColor: Colors.transparent,

      backgroundColor: iconModel.backgroundColor,
      child: Icon(iconModel.icon, color: iconModel.iconColor),
    );
  }
}
