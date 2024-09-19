import 'package:flutter/material.dart';

class GenderCheckbox extends StatelessWidget {
  final String title;
  final bool value;
  final Function(bool?) onChanged;

  const GenderCheckbox({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title),
        Checkbox(value: value, onChanged: onChanged),
      ],
    );
  }
}
