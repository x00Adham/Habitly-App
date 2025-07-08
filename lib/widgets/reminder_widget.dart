import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:day_night_time_picker/lib/state/time.dart';
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
  Time _time = Time(hour: 10, minute: 30, second: 0);
  void _onTimeChanged(Time newTime) {
    setState(() {
      _time = newTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Row(
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
          SizedBox(height: 5),
          Visibility(
            visible: reminderEnabled,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  showPicker(
                    context: context,
                    value: _time,
                    sunrise: TimeOfDay(hour: 6, minute: 0),
                    sunset: TimeOfDay(hour: 18, minute: 0),
                    duskSpanInMinutes: 120,
                    onChange: _onTimeChanged,
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 16,
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.alarm, color: myclickcolor, size: 22),
                    SizedBox(width: 5),
                    Text(
                      "${_time.hourOfPeriod.toString().padLeft(2, '0')}:${_time.minute.toString().padLeft(2, '0')} ${_time.period == DayPeriod.am ? 'AM' : 'PM'}",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: myclickcolor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
