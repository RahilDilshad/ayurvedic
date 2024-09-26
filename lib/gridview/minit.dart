import 'package:flutter/material.dart';

class MinuteDropdown extends StatefulWidget {
  final ValueChanged<int> onMinuteSelected;

  const MinuteDropdown({
    Key? key,
    required this.onMinuteSelected,
  }) : super(key: key);

  @override
  _MinuteDropdownState createState() => _MinuteDropdownState();
}

class _MinuteDropdownState extends State<MinuteDropdown> {
  int? selectedMinute;

  List<DropdownMenuItem<int>> get minuteItems {
    return List.generate(60, (index) => DropdownMenuItem(
      value: index,
      child: Text(index.toString().padLeft(2, '0')), // Pad with leading zeros
    ));
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      value: selectedMinute,
      onChanged: (value) {
        setState(() {
          selectedMinute = value;
          widget.onMinuteSelected(value!);
        });
      },
      items: minuteItems,
      hint: const Text('Select Minute'),
    );
  }
}