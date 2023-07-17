import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/utils/utils.dart';
import 'package:swagapp/modules/constants/constants.dart';

import '../../common/utils/palette.dart';

class SocialFooter extends StatelessWidget {
  const SocialFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Ink(
        height: 100,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: ImageIcon(
                    const AssetImage('assets/icons/twitter_icon.png'),
                    size: 25,
                    color: Palette.current.grey,
                  ),
                  onPressed: () {
                    launchUrlInWebView(twitterUrl);
                  },
                ),
                IconButton(
                  icon: ImageIcon(
                    const AssetImage('assets/icons/facebook_icon.png'),
                    size: 25,
                    color: Palette.current.grey,
                  ),
                  onPressed: () {
                    launchUrlInWebView(facebookUrl);
                  },
                ),
                IconButton(
                  icon: ImageIcon(
                    const AssetImage('assets/icons/instagram_icon.png'),
                    size: 25,
                    color: Palette.current.grey,
                  ),
                  onPressed: () {
                    launchUrlInWebView(instagramUrl);
                  },
                ),
                IconButton(
                  icon: ImageIcon(
                    const AssetImage('assets/icons/discord_icon.png'),
                    size: 30,
                    color: Palette.current.grey,
                  ),
                  onPressed: () {
                    launchUrlInWebView(discordUrl);
                  },
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Text(
              'Swag App v1.0.0',
              style: TextStyle(
                fontSize: 14,
                color: Palette.current.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderActionButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const HeaderActionButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Palette.current.primaryNeonGreen),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
        ),
        child: Text(
          buttonText,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.w500,
              fontFamily: "KnockoutCustom",
              fontSize: 16,
              color: Palette.current.black),
        ),
      ),
    );
  }
}
