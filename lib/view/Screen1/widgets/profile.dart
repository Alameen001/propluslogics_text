

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer(
      {Key? key,
      this.details = const [],
      this.title = 'title',
      this.isVisibleTitle = true,
      this.padding = const EdgeInsets.symmetric(vertical: 12, horizontal: 12)})
      : super(key: key);
  final String title;
  final List<Widget> details;
  final bool isVisibleTitle;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 40,
      margin: const EdgeInsets.only(top: 6),
      padding: padding,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: details,
      ),
    );
  }
}


class ProfileInfo extends StatelessWidget {
  const ProfileInfo(
      {Key? key, this.name = '', this.number = '', this.imgUrl = ''})
      : super(key: key);
  final String name;
  final String number;
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        
        backgroundImage: NetworkImage(imgUrl),
        radius: 24,
      ),
      title: Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: RichText(
        text: TextSpan(
            text: "Contact",
            style: const TextStyle(
                color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w500),
            children: [
              const TextSpan(text: " : "),
              TextSpan(
                  text: number,
                  style: const TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500))
            ]),
      ),
    );
  }
}