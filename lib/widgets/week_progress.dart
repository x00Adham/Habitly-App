import 'package:flutter/widgets.dart';
import 'package:habitly/constants/colors.dart';
import 'package:habitly/widgets/custom_bar_chart.dart';
import 'package:habitly/widgets/my_container.dart';

class WeekProgress extends StatelessWidget {
  const WeekProgress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      paddingH: 20,
      paddingV: 20,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Weekly Progress",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text("75%", style: TextStyle(color: mygray)),
          ],
        ),
        SizedBox(height: 4),
        CustomBarChart(),
      ],
    );
  }
}