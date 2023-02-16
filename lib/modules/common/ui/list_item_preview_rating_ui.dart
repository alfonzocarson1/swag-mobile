import 'package:flutter/material.dart';

import '../utils/palette.dart';

typedef RatingChangeCallback = void Function(double rating);

class StarRatingListItemPreview extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback? onRatingChanged;
  final Color? color;

  const StarRatingListItemPreview(
      {super.key,
      this.starCount = 5,
      this.rating = .0,
      this.onRatingChanged,
      this.color});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = Icon(
        Icons.star,
        size: 14,
        color: Palette.current.gray4,
      );
    } else if (index > rating - 1 && index < rating) {
      icon = Icon(
        Icons.star_half,
        size: 14,
        color: color ?? Palette.current.primaryNeonPink,
      );
    } else {
      icon = Icon(
        Icons.star,
        size: 14,
        color: color ?? Palette.current.primaryNeonPink,
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
    return Row(children: [
      Row(
        children:
            List.generate(starCount, (index) => buildStar(context, index)),
      ),
      const SizedBox(
        width: 10,
      ),
      Text('($rating)',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: Palette.current.grey, fontSize: 14))
    ]);
  }
}
