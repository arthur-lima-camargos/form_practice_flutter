import 'package:flutter/material.dart';

class GenderRadioButton extends StatelessWidget {
  final String title;
  final String groupValue;
  final Function(String?) onChanged;

  const GenderRadioButton({
    super.key,
    required this.title,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title),
        Radio<String>(
          value: title,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
