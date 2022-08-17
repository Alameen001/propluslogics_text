

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: const Icon(
        Icons.edit_outlined,
      ),
      label: const Text(
        'Write a Review',
      ),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all( Color.fromARGB(255, 255, 167, 4)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        side: MaterialStateProperty.all(const BorderSide(color:  Color.fromARGB(255, 255, 167, 4))),
      ),
    );
  }
}