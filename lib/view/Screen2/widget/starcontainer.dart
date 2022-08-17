
import 'package:flutter/material.dart';
import 'package:propluslogics_text/view/Screen2/widget/star_rating.dart';

class StarContainer extends StatelessWidget {
  const StarContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        StarCountPanel(starCont: 5, ratingCount: 16),
        StarCountPanel(
          starCont: 4,
          ratingCount: 08,
        ),
        StarCountPanel(
          starCont: 3,
          ratingCount: 06,
        ),
        StarCountPanel(
          starCont: 2,
          ratingCount: 02,
        ),
        StarCountPanel(
          ratingCount: 01,
        )
      ],
    );
  }
}


class StarCountPanel extends StatelessWidget {
  const StarCountPanel({Key? key, this.ratingCount = 1, this.starCont = 1})
      : super(key: key);
  final int starCont;
  final int ratingCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        StarRating(
          starCount: starCont,
          iconSize: 26,
        ),
      SizedBox(width: 10,),
        Text(
          ratingCount.toString().padLeft(2, '0'),
          style:   TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w400) ,
        )
      ],
    );
  }
}