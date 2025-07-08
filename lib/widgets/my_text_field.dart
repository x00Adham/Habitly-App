import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});
  @override
  Widget build(BuildContext context) {
    return TextField(
      showCursor: false,
      decoration: InputDecoration(
        hintText: 'e.g. Morning Run',
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
          borderSide: const BorderSide(color: Colors.grey, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.blue, width: 1),
        ),
        filled: true,
        fillColor: Colors.white,
        isDense: true, // Makes the field more compact
      ),
    );
  }
}
