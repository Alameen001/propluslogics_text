


import 'package:flutter/material.dart';

class HighlightRating extends StatelessWidget {
  const HighlightRating({Key? key, this.count = 0, this.percentage = 0.0})
      : super(key: key);
  final double percentage;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          percentage.toString(),
          style: const TextStyle(
              color: Colors.green, fontSize: 40, fontWeight: FontWeight.w900),
        ),
        Text(
          '${count.toString()} Rating',
          style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}