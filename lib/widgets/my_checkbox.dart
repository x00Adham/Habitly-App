import 'package:flutter/material.dart';

class MyCheckbox extends StatelessWidget {
  final bool isChecked;

  const MyCheckbox({super.key, required this.isChecked});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color:
            isChecked ? Color(0xFF2ED47A) : Colors.transparent, // Green color
        shape: BoxShape.circle,
        border: Border.all(
          color: isChecked ? Color(0xFF2ED47A) : Color(0xffD1D5DB),
          width: 2,
        ),
      ),
      child:
          isChecked
              ? Center(child: Icon(Icons.check, color: Colors.white, size: 15))
              : null,
    );
  }
}
