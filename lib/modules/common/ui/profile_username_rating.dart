import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../utils/palette.dart';

class ProfileUsernameRating extends StatelessWidget {
  final String username;
  final bool kycVerified;
  final double rating;

  const ProfileUsernameRating({
    super.key,
    required this.username,
    required this.kycVerified,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text('@$username',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontFamily: "KnockoutCustom",
                      fontSize: 33,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.w300,
                      color: Palette.current.light4)),
            ),
            if (kycVerified == true) ...[
              const SizedBox(
                width: 5,
              ),
              Image.asset(
                'assets/images/Verifyindicator.png',
                width: 25,
                height: 25,
              ),
            ],
          ],
        ),
        if (rating >= 1) ...[
          const SizedBox(
            height: 16,
          ),
          Container(
            decoration: BoxDecoration(
              color: Palette.current.primaryNeonGreen,
              borderRadius: BorderRadius.circular(100),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ImageIcon(
                  const AssetImage("assets/icons/thumbs-up.png"),
                  size: 20,
                  color: Palette.current.primaryNero,
                ),
                const SizedBox(width: 6),
                Text(
                  NumberFormat.decimalPattern()
                      .format(rating.toInt()),
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontFamily: "KnockoutCustom",
                      fontSize: 16,
                      color: Palette.current.primaryNero,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.3),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }
}
