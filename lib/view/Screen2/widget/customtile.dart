
import 'package:flutter/material.dart';
import 'package:propluslogics_text/view/Screen2/widget/star_rating.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
           CircleAvatar(
            backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh2NZDu8N3axXi1Tf3dmN7xuZXJOySo4wV8A&usqp=CAU"),
           ),
    SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'John William',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: const [
                    StarRating(
                      starCount: 3,
                    )
                  ],
                )
              ],
            ),
          ),
          Text(
            'June 5, 2021',
       style:   TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w400)
          ),
        ],
      ),
    );
  }
}