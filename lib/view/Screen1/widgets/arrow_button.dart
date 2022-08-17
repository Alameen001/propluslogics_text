import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ArrowButton extends StatelessWidget {
  const ArrowButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialButton(onPressed: (){},
    height: 30,
    color: Color.fromARGB(255, 255, 167, 4),
    textColor: Colors.white,
     padding: const EdgeInsets.all(6),
      shape: const CircleBorder(),
      child: const Icon(
        Icons.arrow_back_ios_rounded,
        size: 24,
      ),
    );
  }
}
