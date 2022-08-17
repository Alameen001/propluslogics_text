import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class OrderCard extends StatelessWidget {
  OrderCard(
      {Key? key,
      this.titile = 'title',
      this.Details = const [],
      this.istitleVisble = true,
      this.padding = const EdgeInsets.symmetric(vertical: 12, horizontal: 12)})
      : super(key: key);

  final String titile;
  final List<Widget> Details;
  final bool istitleVisble;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 6),
      padding: padding,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black38),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: Details,
      ),
    );
  }
}
