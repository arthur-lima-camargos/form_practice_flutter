import 'package:flutter/material.dart';

class NotificationSwitch extends StatelessWidget {
  final String title;
  final bool value;
  final Function(bool) onChanged;

  const NotificationSwitch({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Switch(value: value, onChanged: onChanged),
      ],
    );
  }
}
