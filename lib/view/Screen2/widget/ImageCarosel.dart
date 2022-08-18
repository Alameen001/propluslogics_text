import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

  List<String> imageS = [
    "assets/download (1).jpg",
    "assets/download (2).jpg",
    "assets/download (3).jpg",
  ];


class ImageCarosel extends StatelessWidget {
  ImageCarosel({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.5,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: imageS.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imageS[index]))
            ),
          );
        },
      ),
    );
  }
}


List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: const EdgeInsets.all(3),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ?  Color.fromARGB(255, 255, 167, 4) : Colors.white,
          shape: BoxShape.circle),
    );
  });
}