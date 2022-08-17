import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:propluslogics_text/view/Screen1/widgets/arrow_button.dart';
import 'package:propluslogics_text/view/Screen1/widgets/order_iconButton.dart';

class CustomAppbar extends StatelessWidget {
  CustomAppbar(
      {Key? key,
      this.title = '',
      this.leading = const ArrowButton(),
      this.trailing})
      : super(key: key);

  final String title;
  final Widget leading;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      child: Container(
        child: Row(
          children: [
            leading,
            Text(
              title,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            LimitedBox(
              maxWidth: 210,
              child: trailing ??
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      orderIconButton(
                        size: 12,
                        onTap: () {},
                        icon: Icons.close,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      orderIconButton(
                        size: 12,
                        onTap: () {},
                        icon: Icons.done,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
            ),
          ],
        ),
        decoration:const BoxDecoration(
          border: Border(bottom: BorderSide(width: 1,color: Colors.black12))
        ),
      ),
      preferredSize: const Size(double.infinity, 74),
      
    );
  }
}
