import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:propluslogics_text/view/Screen1/widgets/appbar.dart';
import 'package:propluslogics_text/view/Screen1/widgets/order_card.dart';
import 'package:propluslogics_text/view/Screen1/widgets/profile.dart';
import 'package:propluslogics_text/view/Screen2/widget/customname_widget.dart';

class Screen3 extends StatelessWidget {
 

  const Screen3({Key? key}) : super(key: key);

  @override
 Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(child: CustomAppbar(
          title: 'Order Details - ORD123123',
         trailing: SizedBox(),

        ), preferredSize: Size(MediaQuery.of(context).size.width, 70),),
        body: ListView(
           padding: const EdgeInsets.only(top: 4, right: 12, left: 12),
          children: [
            OrderCard(
              padding: EdgeInsets.zero,
              Details: [
                ProfileInfo(
                    imgUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNnbCaJr_Pkz9WWSL2RlFPIWkrrYUU4nTCdw&usqp=CAU",
                    name: 'Vijay',
                    number: "XXXXXXXXXX",
                  ),
              ],
            ),
             Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: CustomNameWidget(
                    title: 'Order Status',
                  ),
                ),
          ],
        ),
      
      ),
    );
  }
}