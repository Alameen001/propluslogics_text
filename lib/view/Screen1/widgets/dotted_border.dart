import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';

class DottedText extends StatelessWidget {
  const DottedText({Key? key, this.text = ''}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 8),
      child: DottedBorder(
        color:  Color(0xffffa400),
        child: SizedBox(
          height: MediaQuery.of(context).size.height /17,
          child: Center(
              child: Text(
            text,
            style: TextStyle(
                color: Color(0xffffa400).withOpacity(0.7),
                fontWeight: FontWeight.bold,
                fontSize: 16),
          )),
        ),
      ),
    );
  }
}