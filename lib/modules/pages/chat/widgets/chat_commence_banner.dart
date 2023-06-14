import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/utils/utils.dart';
import 'package:swagapp/modules/common/assets/images.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ChatCommenceBanner extends StatelessWidget {

  const ChatCommenceBanner({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: const Column(
        children: <Widget>
        [
          _BannerTopBar(),
          SizedBox(height: 5),
          _BannerContent(),
          SizedBox(height: 5),
          _BannerBottomBar(),
        ],
      ),
    );
  }
}

class _BannerContent extends StatelessWidget {

  const _BannerContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Palette.current.greyMessage,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: const Column(
        children: <Widget>
        [
          _BannerTitle(),
          SizedBox(height: 15),
          Row(
            children: <Widget>
            [
              _BannerImage(),
              SizedBox(width: 20),
              _BannerProductInfo(),
            ],
          ),
        ],
      ),
    );
  }
}

class _BannerTitle extends StatelessWidget {

  const _BannerTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Text(
      '@mrdoug has agreed to purchase your Golden King Cover',
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
        fontSize: 18,
        color: Palette.current.white,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}

class _BannerImage extends StatelessWidget {

  const _BannerImage({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double imageSize = width * 0.20; 

    return CachedNetworkImage(
      width: imageSize,
      height: imageSize,
      imageUrl: 'https://cdn.shopify.com/s/files/1/2622/0470/products/Catalina-Wine-mixer-blade-black-1000-1.jpg?v=1675202827',
      errorWidget: (BuildContext context, String url, dynamic error) {

        return Image(
          width: imageSize,
          height: imageSize,
          image: const AssetImage(AppImages.placeHolder),
        );
      },
    );
  }
}

class _BannerProductInfo extends StatelessWidget {

  const _BannerProductInfo({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>
      [
        Text(
          'GOLDEN KING COVER',
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
            fontFamily: "KnockoutCustom",
            fontSize: 35,
            letterSpacing: 1.0,
            fontWeight: FontWeight.w300,
            color: Palette.current.light4,
          ),
        ),
        Text(
          '${S.current.for_sale} ${decimalDigitsLastSalePrice('372.00')}',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontSize: 18,            
            letterSpacing: 0.0224,
            fontWeight: FontWeight.w300,
            color: Palette.current.primaryNeonGreen,
          ),
        ),
      ],
    );
  }
}

class _BannerTopBar extends StatelessWidget {
  
  const _BannerTopBar({super.key});

  @override
  Widget build(BuildContext context) {

    DateTime createdAt = DateTime.now();
    DateFormat dateFormat = DateFormat().add_jm();
    String createdAtFormated = dateFormat.format(createdAt);

    return Row(
      children: <Widget>
      [
        Text(
          S.current.chatBannerItemSold,
          style: TextStyle(
            fontSize: 14,              
            fontWeight: FontWeight.lerp(FontWeight.w300, FontWeight.w400, 0.5),
            color: Palette.current.grey,
          ),
        ),
        const Spacer(),
        Text(
          createdAtFormated,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: Palette.current.gray7,
          ),
        ),
      ],
    );
  }
}

class _BannerBottomBar extends StatelessWidget {

  const _BannerBottomBar({super.key});

  @override
  Widget build(BuildContext context) {

    return RichText(
      text: TextSpan(
        style: TextStyle(color: Palette.current.grey),
        children: <InlineSpan> 
        [
          TextSpan(text: S.current.chatBannerWillPay('@mrdoug')),
          TextSpan(
            text: 'venmo',
            style: TextStyle(color: Palette.current.primaryNeonGreen)
          ),
        ]
      ),
    );
  }
}




