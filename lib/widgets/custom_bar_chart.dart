import 'package:flutter/material.dart';

class CustomBarChart extends StatelessWidget {
  final List<double> weeklyData = [0.8, 0.9, 1.0, 0.6, 0.85, 0.7, 0.5];
  final List<String> weekDays = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];

  CustomBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: List.generate(7, (index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 24,
                height: weeklyData[index] * 60,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 129, 181, 248),
                      Color(0xFF7C5CFF),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),

                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              SizedBox(height: 8),
              Text(
                weekDays[index],
                style: TextStyle(
                  fontSize: 12,
                  // color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
