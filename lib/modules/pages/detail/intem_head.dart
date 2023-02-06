import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:simple_rich_text/simple_rich_text.dart';

import '../../../generated/l10n.dart';
import '../../common/ui/clickable_text.dart';
import '../../common/utils/palette.dart';
import 'transaction_history_page.dart';

class HeadWidget extends StatefulWidget {
  const HeadWidget(
      {super.key,
      required this.urlImage,
      this.catalogItemName,
      this.lastSale,
      this.catalogItemDescription,
      required this.sale,
      this.available,
      this.saleHistory});

  final String urlImage;
  final String? catalogItemName;
  final String? lastSale;
  final String? catalogItemDescription;
  final bool sale;
  final int? available;
  final List<dynamic>? saleHistory;

  @override
  State<HeadWidget> createState() => _HeadWidgetState();
}

class _HeadWidgetState extends State<HeadWidget> {
  bool _viewMore = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 260,
          child: Stack(children: [
            Positioned.fill(
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: widget.urlImage,
                placeholder: (context, url) => SizedBox(
                  height: 360,
                  child: Center(
                    child: CircularProgressIndicator(
                      color: Palette.current.primaryNeonGreen,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                errorWidget: (context, url, error) =>
                    Image.asset("assets/images/ProfilePhoto.png"),
              ),
            ),
          ]),
        ),
        Visibility(
            visible: widget.sale,
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Palette.current.primaryNeonPink,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                      '''${widget.available} ${S.of(context).for_sale}''',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Palette.current.white)),
                ),
              ),
            )),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(widget.catalogItemName ?? '',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.w300,
                                          fontFamily: "Knockout",
                                          fontSize: 30,
                                          color: Palette.current.white))
                            ],
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: () {},
                              child: Image.asset(
                                "assets/images/UnFavorite.png",
                                scale: 3.5,
                              ),
                            ),
                          ),
                        ],
                      ))
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    widget.sale
                        ? "${S.of(context).for_sale} \$360.00 - ${widget.lastSale}"
                        : 'LAST SALE ${widget.lastSale}',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w300,
                        color: Palette.current.primaryNeonGreen)),
              ),
              Visibility(
                  visible: widget.saleHistory != null,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).push(
                          TransactionHistory.route(
                              widget.urlImage,
                              widget.catalogItemName!,
                              widget.lastSale!,
                              false,
                              3));
                    },
                    child: Center(
                      child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Palette.current.primaryNeonGreen),
                              color: Colors.transparent),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Image.asset(
                                "assets/images/trending-up.png",
                                height: 20,
                                width: 20,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(S.of(context).sales_history,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          fontFamily: "Knockout",
                                          fontSize: 25,
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.w500,
                                          color: Palette.current.white)),
                            ],
                          )),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              Visibility(
                  visible: widget.catalogItemDescription != null,
                  child: Column(
                    children: [
                      Text(
                          overflow: _viewMore ? null : TextOverflow.ellipsis,
                          maxLines: _viewMore ? null : 3,
                          widget.catalogItemDescription ?? '',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 15,
                                    letterSpacing: 0.3,
                                    color: Palette.current.primaryWhiteSmoke,
                                  )),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ClickableText(
                            title: SimpleRichText(
                              _viewMore
                                  ? S.of(context).view_less
                                  : S.of(context).view_more,
                              textAlign: TextAlign.start,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      fontSize: 16,
                                      color: Palette.current.white,
                                      fontWeight: FontWeight.w600),
                            ),
                            onPressed: () {
                              setState(() {
                                if (_viewMore) {
                                  _viewMore = false;
                                } else {
                                  _viewMore = true;
                                }
                              });
                            }),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
