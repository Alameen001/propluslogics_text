import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:propluslogics_text/provider/screens_provider.dart';
import 'package:propluslogics_text/view/Screen1/widgets/Product_image.dart';

import 'package:propluslogics_text/view/Screen1/widgets/appbar.dart';
import 'package:propluslogics_text/view/Screen1/widgets/custom_text.dart';
import 'package:propluslogics_text/view/Screen1/widgets/dotted_border.dart';
import 'package:propluslogics_text/view/Screen1/widgets/order_card.dart';
import 'package:propluslogics_text/view/Screen1/widgets/order_time.dart';
import 'package:propluslogics_text/view/Screen1/widgets/profile.dart';
import 'package:provider/provider.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            child: CustomAppbar(
              title: "ORD12313",
            ),
            preferredSize: Size(double.infinity, 74)),
        body: Center(
          child: ListView(
            padding: const EdgeInsets.only(top: 8, left: 12, right: 12),
            children: [
              OrderCard(
                Details: [
                  Text(
                    "Dennis Lingo Men's Slim Fit Shirt",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16),
                  ),
                  CustomText(
                    Mainname: "Category",
                    iconnmae: " : ",
                    Subnam: "Men",
                  ),
                  CustomText(
                    Mainname: "Sub-Category",
                    iconnmae: " : ",
                    Subnam: "Shirt",
                  ),
                  CustomText(
                    Mainname: "Product Code",
                    iconnmae: " : ",
                    Subnam: "#18358",
                  ),
                  CustomText(
                    Mainname: "Service",
                    iconnmae: " : ",
                    Subnam: "Stiching",
                  ),
                ],
              ),
              const ProfileContainer(
                details: [
                  ProfileInfo(
                    imgUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNnbCaJr_Pkz9WWSL2RlFPIWkrrYUU4nTCdw&usqp=CAU",
                    name: 'Vijay',
                    number: "XXXXXXXXXX",
                  )
                ],
              ),
              OrderCard(
                Details: [
                  Text(
                    "Address",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16),
                  ),
                  CustomText(
                    Subnam: "No: 2/326, Malayanoor(Vill),",
                  ),
                  CustomText(
                    Subnam: "Ramagondahalli (PO), Pennagaram (Tk)",
                  ),
                  CustomText(
                    Subnam: "Tamil nadu - 636810",
                  )
                ],
              ),
              Stack(
                children: [
                  OrderCard(
                    Details: [
                      SizedBox(
                        height: size.height / 12,
                        child: Row(
                          children: const [
                            Expanded(
                              child: OrderTime(
                                title: 'Pick Up Date',
                                body: "12 - 04 - 2022",
                              ),
                            ),
                            VerticalDivider(
                              thickness: 2,
                              width: 2,
                            ),
                            Expanded(
                              child: OrderTime(
                                title: 'Pick Up Time',
                                body: "10:30 AM",
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    top: 10,
                    right: 0,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.calendar_badge_plus,
                          color: Colors.blue,
                        )),
                  )
                ],
              ),
              OrderCard(
                Details: [
                  Container(
                    height: size.height / 15,
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Appointment Date',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text('12-04-2022 | 12:25am to 12:30pm')
                              ],
                            )
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            const Icon(
                              Icons.cloud_done_rounded,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.calendar_month,
                              color: Colors.red,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
               Consumer<ScreenSprovider>(builder: (context, newValue, chhild) {
                return ProductImage(
                  productNum: "Product 1",
                  isVisible: newValue.isImgVisible,
                  onTap: () =>
                      Provider.of<ScreenSprovider>(context, listen: false)
                          .imgVisibility(),
                );
              }),


              OrderCard(
                Details: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text("Addon Service",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16)),
                  ),
                  Text(
                    "Lining Quality Washed | Lining Quality Washed",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Lining Quality Washed | Lining Quality Washed",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              OrderCard(
                Details: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Customer Tailor Notes",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16)),
                  ),
                  Text(
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,",
                    style: TextStyle(
                        height: 1.3,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 13),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Row(
                    children: [
                      const Text("Vendor Notes for Tailor",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16)),
                      Spacer(),
                      Wrap(
                        children: [
                          IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.share,
                                color: Colors.blue,
                              )),
                          IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.edit,
                                color: Colors.blue,
                              ))
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,",
                    style: TextStyle(
                        height: 1.3,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 13),
                  ),
                ],
              ),
              const DottedText(text: 'Vendor Notes for Tailor'),
              // --------------------

              Consumer<ScreenSprovider>(builder: (context, newValue, chhild) {
                return ProductImage(
                  productNum: "Product 2",
                  isVisible: newValue.isImgVisible,
                  onTap: () =>
                      Provider.of<ScreenSprovider>(context, listen: false)
                          .imgVisibility(),
                );
              }),

              OrderCard(
                Details: const [
                  Text(
                    "Order",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16),
                  ),
                  customText2(
                    MainName1: "Item 1 ",
                    subName1: "650.00",
                  ),
                  customText2(
                    MainName1: "Adon",
                    subName1: "00.00",
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Text(
                      'Price: 650 | Text: 18% | Tax Amt: 55',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  customText2(
                      MainName1: "Taxable",
                      subName1: "705.00",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w700)),
                  customText2(
                    MainName1: "Tax Amt",
                    subName1: "65.00",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                  customText2(
                    MainName1: "Total Amount",
                    subName1: "805.00",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                ],
              ),
              OrderCard(
                Details: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text("Payment Mode",
                        style:  TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16)),
                  ),
                  Text(
                    "Cash on Delivery",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
