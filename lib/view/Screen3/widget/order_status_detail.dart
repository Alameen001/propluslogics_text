import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';

import 'package:propluslogics_text/provider/screens_provider.dart';
import 'package:propluslogics_text/provider/togle_button.dart';

import 'package:propluslogics_text/view/Screen1/widgets/order_card.dart';
import 'package:propluslogics_text/view/Screen1/widgets/order_iconButton.dart';
import 'package:propluslogics_text/view/Screen3/widget/order_detail.dart';
import 'package:provider/provider.dart';

class OrderStatusDetails extends StatelessWidget {
  OrderStatusDetails({Key? key, this.num = 0, required this.isVisible})
      : super(key: key);

  final int num;
  final bool isVisible;
  bool isPicked = false;

  bool isItem1 = false;
  bool isStitching = false;
  bool isCompleted = false;
  bool isTaken = false;
  bool isDelivered = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<TogleButtonprovider>(builder: (context, data, child) {
      return Column(
        children: [
          OrderCard(
            Details: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Items $num",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Visibility(
                            visible: data.isExpand,
                            child: Text("Category : Shirt | Rs : 450",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400)))
                      ],
                    ),
                  ),
                  orderIconButton(
                    onTap: () {
                      context
                          .read<TogleButtonprovider>()
                          .orderStatusVisibility(isVisible);
                    },
                    color: Color.fromARGB(255, 255, 167, 4),
                    size: 14,
                    icon: data.isExpand
                        ? Icons.keyboard_arrow_up_rounded
                        : Icons.keyboard_arrow_down_rounded,
                  )
                ],
              )
            ],
          ),
          Visibility(
              visible: data.isExpand,
              child: Consumer<ScreenSprovider>(
                  builder: (context, newvalue, child) {
                return LimitedBox(
                  maxHeight: MediaQuery.of(context).size.height / 2,
                  child: Row(
                    children: [
                      IconStepper(
                        direction: Axis.vertical,
                        enableStepTapping: false,
                        steppingEnabled: false,
                        lineLength: MediaQuery.of(context).size.height / 17.9,
                        lineColor: Colors.grey[400],
                        alignment: Alignment.centerLeft,
                        stepRadius: 15,
                        stepColor: Colors.grey[350],
                        activeStepBorderColor: Color.fromARGB(255, 255, 167, 4),
                        activeStepColor: Color.fromARGB(255, 255, 167, 4),
                        enableNextPreviousButtons: false,
                        activeStepBorderPadding: 0,
                        activeStepBorderWidth: 0,
                        icons: const [
                          Icon(
                            Icons.circle,
                            size: 14,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.circle,
                            size: 14,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.circle,
                            size: 14,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.circle,
                            size: 14,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.circle,
                            size: 14,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          OrderPress(
                              onchanged: (value) {
                                isPicked = !isPicked;
                                Provider.of<ScreenSprovider>(context,
                                    listen: false);
                              },
                              title: 'Your Product Pickuped',
                              isValue: newvalue.isPicked),
                          OrderPress(
                            onchanged: (value) {
                              isPicked = !isPicked;
                              Provider.of<ScreenSprovider>(context,
                                      listen: false)
                                  .changeCompleted(isPicked);
                            },
                            title: 'Your stitching start',
                            isValue: newvalue.isStitching,
                          ),
                          OrderPress(
                            onchanged: (value) {
                              isStitching = !isStitching;
                              Provider.of<ScreenSprovider>(context,
                                      listen: false)
                                  .changeCompleted(isStitching);
                            },
                            title: 'Your product Completed',
                            isValue: newvalue.isCompleted,
                          ),
                          OrderPress(
                            onchanged: (value) {
                              isCompleted = !isCompleted;
                              Provider.of<ScreenSprovider>(context,
                                      listen: false)
                                  .changeCompleted(isCompleted);
                            },
                            title: 'Your Order Was Taken by Delevery Boy',
                            isValue: newvalue.isTaken,
                          ),
                          OrderPress(
                            onchanged: (value) {
                              isDelivered = !isDelivered;
                              Provider.of<ScreenSprovider>(context,
                                      listen: false)
                                  .changeCompleted(isDelivered);
                            },
                            title: 'Your Product Delivery',
                            isValue: newvalue.isDelivered,
                          ),
                        ],
                      ))
                    ],
                  ),
                );
              }))
        ],
      );
    });
  }
}
