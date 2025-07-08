import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:habitly/constants/colors.dart';

class ReminderWidget extends StatefulWidget {
  const ReminderWidget({super.key});

  @override
  State<ReminderWidget> createState() => _ReminderWidgetState();
}

class _ReminderWidgetState extends State<ReminderWidget> {
  var reminderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Reminder",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          FlutterSwitch(
            width: 50.0,
            height: 26.0,
            valueFontSize: 12.0,
            toggleSize: 22.0,
            value: reminderEnabled,
            borderRadius: 15.0,
            padding: 2.0,
            showOnOff: false,
            activeColor: myclickcolor,
            inactiveColor: Colors.grey.shade300,
            onToggle: (val) {
              setState(() {
                reminderEnabled = val;
              });
            },
          ),
        ],
      ),
    );
  }
}
