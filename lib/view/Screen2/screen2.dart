import 'package:flutter/material.dart';
import 'package:propluslogics_text/view/Screen1/widgets/arrow_button.dart';

import 'package:propluslogics_text/view/Screen2/widget/ImageCarosel.dart';
import 'package:propluslogics_text/view/Screen2/widget/Shopname_stack.dart';
import 'package:propluslogics_text/view/Screen2/widget/boxcontainer.dart';
import 'package:propluslogics_text/view/Screen2/widget/custom_button.dart';
import 'package:propluslogics_text/view/Screen2/widget/custom_container.dart';
import 'package:propluslogics_text/view/Screen2/widget/customname_widget.dart';
import 'package:propluslogics_text/view/Screen2/widget/customtile.dart';
import 'package:propluslogics_text/view/Screen2/widget/rating_star.dart';
import 'package:propluslogics_text/view/Screen2/widget/star_index.dart';

import 'package:propluslogics_text/view/Screen2/widget/starcontainer.dart';

class Screen2 extends StatelessWidget {
  Screen2({Key? key}) : super(key: key);

  final BoxContainerName = ['Stitching', 'Hand Made', 'Machine Made'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                ImageCarosel(),
                Positioned(
                  top: MediaQuery.of(context).size.height / 4.5,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.height,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: indicators(imageS.length, 1),
                    ),
                  ),
                ),
                Positioned(
                  child: ArrowButton(),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 3,
                  left: 12,
                  right: 12,
                  child: ShopnameStack(),
                ),
              ],
            ),
            ListView(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.only(top: 40),
              children: [
                CustomContainer(
                  contents: [
                    CustomNameWidget(
                      title: 'Services',
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: BoxContainerHori(
                            items: BoxContainerName,
                          ),
                        ),
                        StartIndex(
                          count: "3.2",
                        )
                      ],
                    ),
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
                CustomContainer(
                  contents: [
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const CustomNameWidget(
                                title: 'Category',
                              ),
                              BoxContainerHori(
                                items: ['Men', 'Women', 'Kids'],
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.phone_in_talk_sharp,
                          color: Colors.green,
                          size: 30,
                        )
                      ],
                    ),
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
                CustomContainer(
                  contents: [
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              CustomNameWidget(
                                title: 'Benefits',
                              ),
                              Text(
                                "Material Pick up & Deivery Available",
                                style: const TextStyle(
                                    height: 1.3,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.chat,
                          color:  Color.fromARGB(255, 255, 167, 4),
                          size: 30,
                        )
                      ],
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
                ),
                CustomContainer(
                  contents: [
                    CustomNameWidget(
                      title: "Description",
                    ),
                    Text(
                      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,",
                      style: const TextStyle(
                          height: 1.3,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                    )
                  ],
                ),
               Divider(
                  thickness: 2,
                ),
                CustomContainer(
                  contents: [
                    CustomNameWidget(
                      title: 'Rating & Comments',
                    ),
                    Row(
                    children: const [
                      Expanded(
                        flex: 4,
                        child: StarContainer(),
                      ),
                      Expanded(
                          child: HighlightRating(
                        count: 54,
                        percentage: 4.3,
                      ),)
                    ],
                  ),
                   Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CustomButton(),
                        Text(
                          'Reviews(12)',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 19),
                        )
                      ],
                    ),
                  ),
                   Column(
                    children: const [
                      CustomListTile(),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                    child:  Text(
                      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,",
                      style: const TextStyle(
                          height: 1.3,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                    )
                      )
                    ],
                  )

                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
