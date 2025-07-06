import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCircleIcon extends StatelessWidget {
  // const MyCircleIcon({super.key, required this.backgroundColor, required this.icon, required this.iconColor});
  // final Color backgroundColor;
  // final Icon icon;
  // final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Color(0xffEDE9FE),
      child: Icon(Icons.edit_outlined, color: Color(0xff8B5CF6)),
    );
  }
}
