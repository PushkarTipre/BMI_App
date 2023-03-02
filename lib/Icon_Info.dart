import 'package:flutter/material.dart';

import 'Constants.dart';

class Icon_Info extends StatelessWidget {
  final String label;
  final IconData icon;

  const Icon_Info({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(label, style: labelTextStyle),
      ],
    );
  }
}
