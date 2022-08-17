import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopnameStack extends StatelessWidget {
  const ShopnameStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 8,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xfffb9f83),
              Color(0xfff5cd66),
            ],
          ),
          borderRadius: BorderRadius.circular(6)),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.local_print_shop_sharp,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Shop Name",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Johnson Road, T.Nagar",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          DottedBorder(
            color: Colors.white,
            child: IconButton(
              padding: const EdgeInsets.symmetric(vertical: 30),
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
