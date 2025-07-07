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
      (item) => item.name == name,
      orElse: () {
        // Handle the case where the name is not found.
        // For now, let's throw an error.
        // Alternatively, you could return a default IconModel.
        throw ArgumentError(
          'IconModel with name "$name" not found in iconsList.',
        );
      },
    );

    return CircleAvatar(
      foregroundColor: Colors.transparent,

      backgroundColor: iconModel.backgroundColor,
      child: Icon(iconModel.icon, color: iconModel.iconColor),
    );
  }
}
