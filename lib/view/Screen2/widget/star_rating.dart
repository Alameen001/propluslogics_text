import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef void RatingChangeCallback(double rating);
class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback? onRatingChanged;
  final Color color;
  final double iconSize;

  const StarRating(
      {Key? key,
      this.starCount = 5,
      this.rating = .0,
      this.iconSize = 18.0,
      this.onRatingChanged,
      this.color = Colors.yellow})
      : super(key: key);

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = Icon(
        Icons.star_rate_rounded,
        color:   Color.fromARGB(255, 255, 167, 4),
        size: iconSize,
      );
    } else if (index > rating - 1 && index < rating) {
      icon = Icon(
        Icons.star_half,
        color: color,
        size: iconSize,
      );
    } else {
      icon = Icon(
        Icons.star,
        color: color,
        size: iconSize,
      );
    }
    return InkResponse(
      onTap:
          onRatingChanged == null ? null : () => onRatingChanged!(index + 1.0),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        children:
            List.generate(starCount, (index) => buildStar(context, index)));
  }
}
