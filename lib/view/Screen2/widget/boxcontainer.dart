import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class BoxContainerHori extends StatelessWidget {
  const BoxContainerHori({Key? key, this.items = const []}) : super(key: key);

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 25,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            String data = items[index];
            return DottedBorder(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              color: Color.fromARGB(255, 255, 167, 4),
                child: Center(
              child: Text(data),
            ));
          },
          separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
          itemCount: 3),
    );
  }
}
