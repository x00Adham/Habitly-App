import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:habitly/constants/colors.dart';

class CustomFloatingButton extends StatelessWidget {
  final VoidCallback onTap;

  const CustomFloatingButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 47, 68, 255),
              myblue,
            ], // adjust if needed
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: const Icon(FontAwesomeIcons.add, color: Colors.white, size: 27),
      ),
    );
  }
}
