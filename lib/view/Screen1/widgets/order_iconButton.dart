import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class orderIconButton extends StatelessWidget {
  const orderIconButton(
      {Key? key,
      this.onTap,
      this.color = Colors.green,
      this.icon = Icons.arrow_back_ios,
      this.size = 18})
      : super(key: key);
  final int size;
  final Color color;
  final IconData icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: size.toDouble(),
        backgroundColor: color,
        child: Align(
            alignment: Alignment.center,
            child: Icon(
              icon,
              color: Colors.white,
            )),
      ),
    );
  }
}