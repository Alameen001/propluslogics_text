import 'package:flutter/cupertino.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key, this.contents = const []}) : super(key: key);
  final List<Widget> contents;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 8, bottom: 12),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, children: contents),
    );
  }
}