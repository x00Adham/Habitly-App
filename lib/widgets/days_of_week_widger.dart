import 'package:flutter/material.dart';
import 'package:habitly/constants/colors.dart';

class DaysOfWeekWidget extends StatefulWidget {
  const DaysOfWeekWidget({super.key});
  static Set<int> selectedDays = {0, 1, 2, 3, 4};
  static final List<String> dayLabels = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];

  @override
  State<DaysOfWeekWidget> createState() => _DaysOfWeekWidgetState();
}

class _DaysOfWeekWidgetState extends State<DaysOfWeekWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Days of Week",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(DaysOfWeekWidget.dayLabels.length, (index) {
              final isSelected = DaysOfWeekWidget.selectedDays.contains(index);
              final isWeekend = index >= 5;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    if (isSelected) {
                      DaysOfWeekWidget.selectedDays.remove(index);
                    } else {
                      DaysOfWeekWidget.selectedDays.add(index);
                    }
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 2),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                      color: isSelected ? myclickcolor : Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                      border:
                          isWeekend && !isSelected
                              ? Border.all(color: Colors.grey.shade300)
                              : null,
                    ),
                    child: Center(
                      child: Text(
                        DaysOfWeekWidget.dayLabels[index],
                        style: TextStyle(
                          color:
                              isSelected ? Colors.white : Colors.grey.shade600,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
