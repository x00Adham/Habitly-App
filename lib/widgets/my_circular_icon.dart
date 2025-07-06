import 'package:flutter/material.dart';

class MyCircleIcon extends StatelessWidget {
  const MyCircleIcon({super.key, required this.backgroundColor, required this.icon, required this.iconColor});
  final Color backgroundColor;
  final IconData icon;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      child: Icon(icon, color: iconColor),
    );
  }
}
