

import 'package:flutter/material.dart';
import 'package:propluslogics_text/view/Screen1/widgets/order_card.dart';
import 'package:propluslogics_text/view/Screen1/widgets/order_iconButton.dart';
import 'package:propluslogics_text/view/Screen2/widget/custom_button.dart';

class ProductImage extends StatelessWidget {
  const ProductImage(
      {Key? key,
      this.isVisible = false,
      this.onTap,
      this.productNum = ''})
      : super(key: key);
  final bool isVisible;
  final String productNum;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return OrderCard(
      padding: EdgeInsets.zero,
      Details: [
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical:12, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
           Text(productNum,style: TextStyle(fontWeight: FontWeight.bold),),
              
              orderIconButton(
                color: Color(0xffffa400) ,
                icon: isVisible
                    ? Icons.keyboard_arrow_up_rounded
                    : Icons.keyboard_arrow_down_rounded,
                onTap: onTap,
                size: 14,
              )
            ],
          ),
        ),
        Visibility(
          visible: isVisible,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(
                thickness: 2.1,
                color: Colors.black38,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  'Material Image',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: LimitedBox(
                  maxHeight: MediaQuery.of(context).size.height / 8,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 10,
                    ),
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        width:  MediaQuery.of(context).size.width / 4.2,
                        
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image:  DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/place.jpeg"))),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}