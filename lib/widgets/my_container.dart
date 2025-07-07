import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key, required this.children, required this.paddingH, required this.paddingV});
  final List<Widget> children;
  final double paddingH;
  final double paddingV;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 10,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: paddingH,vertical: paddingV),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [...children],
        ),
      ),
    );
  }
}
