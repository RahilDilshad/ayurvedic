import 'package:flutter/material.dart';

class HourDropdown extends StatefulWidget {
  final ValueChanged<int> onHourSelected;

  const HourDropdown({
    Key? key,
    required this.onHourSelected,
  }) : super(key: key);

  @override
  _HourDropdownState createState() => _HourDropdownState();
}

class _HourDropdownState extends State<HourDropdown> {
  int? selectedHour;

  List<DropdownMenuItem<int>> get hourItems {
    return List.generate(24, (index) => DropdownMenuItem(
      value: index,
      child: Text(index.toString().padLeft(2, '0')), // Pad with leading zeros
    ));
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      value: selectedHour,
      onChanged: (value) {
        setState(() {
          selectedHour = value;
          widget.onHourSelected(value!);
        });
      },
      items: hourItems,
      hint: const Text('Select Hour'),
    );
  }
}










//----------------------------------------------------------------------------



