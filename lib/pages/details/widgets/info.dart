import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        Stats(value: '345', unit: 'kcal', label: 'Calories'),
        Stats(value: '3.6', unit: 'km', label: 'Distance'),
        Stats(value: '1.5', unit: 'hr', label: 'Hours'),
      ],
    );
  }
}

class Stats extends StatelessWidget {
  final String value;
  final String unit;
  final String label;

  const Stats({
    Key? key,
    required this.value,
    required this.unit,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text.rich(
          TextSpan(
              text: value,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
              children: [
                const TextSpan(text: ' '),
                TextSpan(
                  text: unit,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ]),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
