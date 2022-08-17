import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({Key? key, this.Mainname = '', this.Subnam = '',this.iconnmae=''})
      : super(key: key);

  final String Mainname;
  final String Subnam;
  final String iconnmae;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: RichText(
          text: TextSpan(
              text: Mainname,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 15),
              children: [
            TextSpan(
                text: iconnmae, style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: Subnam, style: const TextStyle(color: Colors.grey))
          ])),
    );
  }
}


class customText2 extends StatelessWidget {
  const customText2(
      {Key? key,
      this.MainName1 = '',
      this.subName1 = '',
      this.style = const TextStyle(fontWeight: FontWeight.bold)})
      : super(key: key);
  final String MainName1;
  final String subName1;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            MainName1,
            style: style,
          ),
          Text(
            subName1,
            style: style,
          )
        ],
      ),
    );
  }
}
