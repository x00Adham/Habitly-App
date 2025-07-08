import 'package:flutter/material.dart';

class GoalWidget extends StatefulWidget {
  const GoalWidget({super.key});

  @override
  State<GoalWidget> createState() => _GoalWidgetState();
}

class _GoalWidgetState extends State<GoalWidget> {
  String selectedUnit = 'km';
  List<String> units = ['km', 'Minutes', 'Hours', 'liters'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Goal (optional)",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 150,
              child: TextField(
                showCursor: false,
                decoration: InputDecoration(
                  hintText: 'e.g.5',
                  hintStyle: const TextStyle(color: Colors.grey),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10, // Reduced vertical padding for smaller height
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      color: Colors.grey, // Fixed: can't use .shade300 in const
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(color: Colors.blue, width: 1),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  isDense: true, // Makes the field more compact
                ),
              ),
            ),
            Container(
              height: 45,
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey.shade400),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  borderRadius: BorderRadius.circular(16),
                  value: selectedUnit,
                  icon: Icon(Icons.arrow_drop_down, size: 20),
                  isDense: true,
                  style: TextStyle(fontSize: 15, color: Colors.black),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedUnit = newValue!;
                    });
                  },
                  items:
                      units.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: TextStyle(fontSize: 15)),
                        );
                      }).toList(),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
