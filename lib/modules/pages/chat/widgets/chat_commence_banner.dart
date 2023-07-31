import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/utils/utils.dart';
import 'package:swagapp/modules/common/assets/images.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:swagapp/modules/models/chat/channel_data.dart';


late double screenHeight;

class ChatCommenceBanner extends StatelessWidget {
  final ChannelData channelData;
  final bool isListingChat;
  final DateTime createdAt;
  final String otherUser;

  const ChatCommenceBanner({
    super.key,
    required this.channelData,
    required this.isListingChat, 
    required this.createdAt, 
     required this.otherUser
  });

  @override
  Widget build(BuildContext context) {
     screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: 350,
      //margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: <Widget>[
           _BannerTopBar(isListingChat: this.isListingChat, createdAt: this.createdAt,),
          const SizedBox(height: 5),
          _BannerContent(channelData: this.channelData, isListingChat: this.isListingChat, otherUser: this.otherUser),
          const SizedBox(height: 5),
          _BannerBottomBar(
            isListingChat: this.isListingChat,
            channelData: this.channelData,
          ),
        ],
      ),
    );
  }
}

class _BannerContent extends StatelessWidget {
  final ChannelData channelData;
  final bool isListingChat;
  final String? otherUser;

  const _BannerContent({
    super.key,
    required this.channelData,
    required this.isListingChat, 
    this.otherUser
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height:(isListingChat) ? screenHeight * 0.20 : screenHeight * 0.23,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Palette.current.greyMessage,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: <Widget>[
          _BannerTitle(
            buyerName:(this.isListingChat) ? this.otherUser ?? "" : this.channelData.buyerUsername,
            listingName: this.channelData.listingProductName,
           isListingChat: this.isListingChat),
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
  final bool isListingChat;

  const _BannerTitle({
    super.key,
    required this.buyerName,
    required this.listingName,
    required this.isListingChat
  });

  @override
  Widget build(BuildContext context) {
    return Text(
     (this.isListingChat) ? S.current.chatListingBannerTitle(this.buyerName) :S .current.chatBannerTitle(this.buyerName, this.listingName),
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
  const _BannerTopBar({super.key, required this.isListingChat, required this.createdAt});
  final bool isListingChat;
  final DateTime createdAt;

  @override
  Widget build(BuildContext context) {
     DateFormat dateFormat = DateFormat().add_jm();
     String createdAtFormated = dateFormat.format(createdAt);

    return Row(
      children: <Widget>[
        Text(
          (!this.isListingChat)? S.current.chatBannerItemSold : "Listing",
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
  final bool isListingChat;

  const _BannerBottomBar({
    super.key,
    required this.channelData,
    required this.isListingChat
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

    return (!this.isListingChat) ? RichText(
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
    ): SizedBox(
      height: screenHeight * 0.05,
    );
  }
}
