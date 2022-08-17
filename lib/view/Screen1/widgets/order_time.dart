

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderTime extends StatelessWidget {
  const OrderTime({Key? key, this.body = '', this.title = ''})
      : super(key: key);
  final String title;
  final String body;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
             title, style: const TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
          ),
          Text(
            body,
            style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w400)
          )
        ],
      ),
    );
  }
}