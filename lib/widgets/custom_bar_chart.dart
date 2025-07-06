import 'package:flutter/material.dart';
import 'package:habitly/constants/colors.dart';

class CustomBarChart extends StatelessWidget {
  final List<double> weeklyData = [0.8, 0.9, 1.0, 0.6, 0.85, 0.7, 0.3];
  final List<String> weekDays = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];

  CustomBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: List.generate(7, (index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: 24,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(0xffF3F4F6),

                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  Container(
                    width: 24,
                    height: weeklyData[index] * 70,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [myblue, mypink],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),

                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                weekDays[index],
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[700],
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
