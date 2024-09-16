import 'package:flutter/material.dart';

class SatisfactionSlider extends StatelessWidget {
  final double value;
  final Function(double) onChanged;

  const SatisfactionSlider({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Satisfação do cliente'),
        Expanded(
          child: Slider(
            value: value,
            min: 1,
            max: 10,
            divisions: 9,
            onChanged: onChanged,
          ),
        ),
        Text('${value.round()}'),
      ],
    );
  }
}
