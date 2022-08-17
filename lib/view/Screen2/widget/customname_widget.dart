

import 'package:flutter/cupertino.dart';

class CustomNameWidget extends StatelessWidget {
  const CustomNameWidget({Key? key, this.title = 'Title'}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
      ),
    );
  }
}