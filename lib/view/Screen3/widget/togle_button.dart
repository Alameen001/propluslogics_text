


import 'package:flutter/material.dart';
import 'package:propluslogics_text/provider/togle_button.dart';
import 'package:provider/provider.dart';

class Toglebutton extends StatefulWidget {
  Toglebutton({Key? key, 
   required this.isValueChange ,
    required this.onChanged,
  }) : super(key: key);

 bool isValueChange;
  final ValueChanged<bool> onChanged;

  @override
  _ToglebuttonState createState() => _ToglebuttonState();
}

class _ToglebuttonState extends State<Toglebutton> {
  Alignment ToglebuttonAlignment = Alignment.centerLeft;
  // bool isValueChange = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<TogleButtonprovider>(
      builder: (context, value, child) => InkWell(
        splashColor: Colors.transparent,
        child: AnimatedContainer(
          key: UniqueKey(),
          duration: const Duration(milliseconds: 300),
          curve: Curves.decelerate,
          width: 55,
          height: 23,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[400]!,
                  offset: const Offset(0, 2),
                  blurRadius: 1,
                  spreadRadius: 1),
            ],
            borderRadius: BorderRadius.circular(100.0),
            color: value.isToggle ? Colors.black12 : Colors.white,
          ),
          child: AnimatedAlign(
            duration: const Duration(milliseconds: 300),
            alignment:
                value.isToggle ? Alignment.centerRight : Alignment.centerLeft,
            curve: Curves.decelerate,
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                width: 23,
                height: 23,
                decoration: BoxDecoration(
                  color:  Color.fromARGB(255, 255, 167, 4),
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
            ),
          ),
        ),
        onTap: () {
          // widget.isValueChange = !widget.isValueChange;
          // widget.isValueChange =!widget.isValueChange;
          Provider.of<TogleButtonprovider>(context, listen: false)
              .switchToggle(widget.isValueChange);
              widget.onChanged(widget.isValueChange);
          // setState() {
          //   widget.value = !widget.value;
          //   widget.onChanged(widget.value);
          // };
        },
      ),
    );
  }
}
