import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/utils/utils.dart';
import 'package:swagapp/modules/common/assets/images.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:swagapp/modules/models/chat/channel_data.dart';

class ChatCommenceBanner extends StatelessWidget {
  final ChannelData channelData;

  const ChatCommenceBanner({
    super.key,
    required this.channelData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          const _BannerTopBar(),
          const SizedBox(height: 5),
          _BannerContent(channelData: this.channelData),
          const SizedBox(height: 5),
          _BannerBottomBar(
            channelData: this.channelData,
          ),
        ],
      ),
    );
  }
}

class _BannerContent extends StatelessWidget {
  final ChannelData channelData;

  const _BannerContent({
    super.key,
    required this.channelData,
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
      child: Column(
        children: <Widget>[
          _BannerTitle(
            buyerName: this.channelData.buyerUsername,
            listingName: this.channelData.listingProductName,
          ),
          const SizedBox(height: 15),
          Row(
            children: <Widget>[
              _BannerImage(listingImageUrl: this.channelData.listingImageUrl),
              const SizedBox(width: 20),
              Flexible(
                  child: _BannerProductInfo(channelData: this.channelData)),
            ],
          ),
        ],
      ),
    );
  }
}

class _BannerTitle extends StatelessWidget {
  final String buyerName;
  final String listingName;

  const _BannerTitle({
    super.key,
    required this.buyerName,
    required this.listingName,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      S.current.chatBannerTitle(this.buyerName, this.listingName),
      maxLines: 2,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
            overflow: TextOverflow.ellipsis,
            fontSize: 18,
            color: Palette.current.white,
            fontWeight: FontWeight.normal,
          ),
    );
  }
}

class _BannerImage extends StatelessWidget {
  final String listingImageUrl;

  const _BannerImage({
    super.key,
    required this.listingImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double imageSize = width * 0.20;

    return CachedNetworkImage(
      width: imageSize,
      height: imageSize,
      imageUrl: listingImageUrl,
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
  final ChannelData channelData;

  const _BannerProductInfo({
    super.key,
    required this.channelData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          this.channelData.listingProductName.toUpperCase(),
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontFamily: "KnockoutCustom",
                fontSize: 35,
                letterSpacing: 1.0,
                fontWeight: FontWeight.w300,
                color: Palette.current.light4,
                overflow: TextOverflow.ellipsis,
              ),
        ),
        Text(
          '${S.current.for_sale} ${decimalDigitsLastSalePrice(this.channelData.price.toString())}',
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
      children: <Widget>[
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
  final ChannelData channelData;

  const _BannerBottomBar({
    super.key,
    required this.channelData,
  });

  @override
  Widget build(BuildContext context) {
    String paymentMethod = (this.channelData.paymentMethod.payPalEmail.isEmpty)
        ? (this.channelData.paymentMethod.venmoUser.isEmpty)
            ? (this.channelData.paymentMethod.cashTag.isEmpty)
                ? ''
                : S.current.paymetCashApp
            : S.current.paymetVenmo
        : S.current.paymetPaypal;

    return RichText(
      text: TextSpan(
          style: TextStyle(color: Palette.current.grey),
          children: <InlineSpan>[
            TextSpan(
              text: S.current.chatBannerWillPay(this.channelData.buyerUsername),
            ),
            TextSpan(
                text: paymentMethod,
                style: TextStyle(color: Palette.current.primaryNeonGreen)),
          ]),
    );
  }
}
