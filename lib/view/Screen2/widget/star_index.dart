

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartIndex extends StatelessWidget {
  const StartIndex({Key? key, this.count = '0.0'}) : super(key: key);
  final String count;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star_rate_rounded,
          color: Color.fromARGB(255, 255, 167, 4),
          size: 28,
        ),
        SizedBox(width: 5,),
        Text(
          count,
          style: const TextStyle(fontWeight: FontWeight.w900),
        ),
      ],
    );
  }
}