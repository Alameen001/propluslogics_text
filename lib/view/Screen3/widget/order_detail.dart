


import 'package:flutter/material.dart';
import 'package:propluslogics_text/view/Screen3/widget/togle_button.dart';

class OrderPress extends StatelessWidget {
  const OrderPress(
      {Key? key,
      this.title = 'title',
      required this.onchanged,
      required this.isValue})
      : super(key: key);
  final void Function(bool) onchanged;

  final bool isValue;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: const TextStyle(fontSize: 14, color: Colors.grey),
      ),
      subtitle: const Text(
        'Date: 12/10/2021 - 10:05am',
        style: TextStyle(color: Colors.grey, fontSize: 10),
      ),
      trailing: Toglebutton(
          key: key,
          
          isValueChange: isValue,
          onChanged: onchanged),
    );
  }
}