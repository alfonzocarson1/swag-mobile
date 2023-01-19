import 'package:flutter/material.dart';
import 'package:simple_rich_text/simple_rich_text.dart';

import '../../../generated/l10n.dart';
import '../../common/ui/clickable_text.dart';
import '../../common/ui/custom_app_bar.dart';
import '../../common/ui/primary_button.dart';
import '../../common/utils/palette.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool _viewMore = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      appBar: CustomAppBar(actions: true),
      body: _itemDetail(),
    );
  }

  Widget _itemDetail() {
    return Container(
      decoration: BoxDecoration(
        color: Palette.current.primaryEerieBlack,
      ),
      child: Column(
        children: [
          Expanded(
              child: LayoutBuilder(builder: (context, viewportConstraints) {
            return SingleChildScrollView(
                child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    SizedBox(
                      height: 360,
                      child: Stack(children: [
                        Positioned.fill(
                          child: Image.asset(
                            'assets/images/ItemDetail.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Palette.current.blackSmoke,
                      ),
                      child: Column(
                        children: [
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
                                                Text(
                                                    "FIFTEEN MILLION DOLLAR BLADE 3.0",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .displayLarge!
                                                        .copyWith(
                                                            letterSpacing: 1,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            fontFamily:
                                                                "Knockout",
                                                            fontSize: 30,
                                                            color: Palette
                                                                .current.white))
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
                                                  scale: 3,
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
                                  child: Text('''LAST SALE: 425.00''',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              fontWeight: FontWeight.w300,
                                              color: Palette
                                                  .current.primaryNeonGreen)),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Center(
                                    child: Container(
                                        height: 60,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Palette
                                                    .current.primaryNeonGreen),
                                            color: Colors.transparent),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/images/trending-up.png",
                                              scale: 2,
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
                                                        fontSize: 30,
                                                        letterSpacing: 2,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Palette
                                                            .current.white)),
                                          ],
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                    overflow: _viewMore
                                        ? null
                                        : TextOverflow.ellipsis,
                                    maxLines: _viewMore ? null : 3,
                                    '''The winner of this week's final playoff event will receive an insane 15 Million payday...you also have a chance for a payday if you are one of the 36 randomly chosen to have an opportunity to buy this year's 15M Bill Cover!''',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          fontSize: 14,
                                          letterSpacing: 0.3,
                                          color:
                                              Palette.current.primaryWhiteSmoke,
                                        )),
                                const SizedBox(
                                  height: 20,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: ClickableText(
                                      title: SimpleRichText(
                                        _viewMore
                                            ? "View less details"
                                            : "View more details",
                                        textAlign: TextAlign.start,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                                fontSize: 14,
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
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(children: <Widget>[
                              Text("RARITY SCORE: ",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.w300,
                                          fontFamily: "Knockout",
                                          fontSize: 30,
                                          color: Palette.current.white)),
                              Text("RARE",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.w300,
                                          fontFamily: "Knockout",
                                          fontSize: 30,
                                          color:
                                              Palette.current.primaryNeonPink)),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: Divider(
                                color: Palette.current.grey,
                              )),
                            ]),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Column(
                              children: [
                                ListTile(
                                  visualDensity:
                                      const VisualDensity(vertical: -4),
                                  dense: true,
                                  leading: Text("Released:",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontSize: 16,
                                            letterSpacing: 0.3,
                                            color: Palette
                                                .current.primaryWhiteSmoke,
                                          )),
                                  trailing: Text("05/24/2022",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontSize: 16,
                                            letterSpacing: 0.3,
                                            color: Palette
                                                .current.primaryWhiteSmoke,
                                          )),
                                ),
                                ListTile(
                                  visualDensity:
                                      const VisualDensity(vertical: -4),
                                  dense: true,
                                  leading: Text("Release Type:",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontSize: 16,
                                            letterSpacing: 0.3,
                                            color: Palette
                                                .current.primaryWhiteSmoke,
                                          )),
                                  trailing: Text("Tour",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontSize: 16,
                                            letterSpacing: 0.3,
                                            color: Palette
                                                .current.primaryWhiteSmoke,
                                          )),
                                ),
                                ListTile(
                                  dense: true,
                                  visualDensity:
                                      const VisualDensity(vertical: -4),
                                  leading: Text("Total Made:",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontSize: 16,
                                            letterSpacing: 0.3,
                                            color: Palette
                                                .current.primaryWhiteSmoke,
                                          )),
                                  trailing: Text("36",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontSize: 16,
                                            letterSpacing: 0.3,
                                            color: Palette
                                                .current.primaryWhiteSmoke,
                                          )),
                                ),
                                ListTile(
                                  visualDensity:
                                      const VisualDensity(vertical: -4),
                                  dense: true,
                                  leading: Text("Retail:",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontSize: 16,
                                            letterSpacing: 0.3,
                                            color: Palette
                                                .current.primaryWhiteSmoke,
                                          )),
                                  trailing: Text("155.00",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontSize: 16,
                                            letterSpacing: 0.3,
                                            color: Palette
                                                .current.primaryWhiteSmoke,
                                          )),
                                ),
                                ListTile(
                                  visualDensity:
                                      const VisualDensity(vertical: -4),
                                  dense: true,
                                  leading: Text("Available:",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontSize: 16,
                                            letterSpacing: 0.3,
                                            color: Palette
                                                .current.primaryWhiteSmoke,
                                          )),
                                  trailing: Text("3",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontSize: 16,
                                            letterSpacing: 0.3,
                                            color: Palette.current.blueNeon,
                                          )),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(children: <Widget>[
                              Image.asset(
                                "assets/images/Avatar.png",
                                scale: 3,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text("MY COLLECTION: ",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.w300,
                                          fontFamily: "Knockout",
                                          fontSize: 27,
                                          color: Palette.current.white)),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: Divider(
                                color: Palette.current.grey,
                              )),
                            ]),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text:
                                            'This cover is not in your collection, ',
                                        style: TextStyle(
                                          fontSize: 16,
                                          letterSpacing: 0.3,
                                          color:
                                              Palette.current.primaryWhiteSmoke,
                                        )),
                                    TextSpan(
                                        text: 'make an offer ',
                                        style: TextStyle(
                                          fontSize: 16,
                                          letterSpacing: 0.3,
                                          color: Palette.current.blueNeon,
                                        )),
                                    TextSpan(
                                        text: 'to see if you can get one.',
                                        style: TextStyle(
                                          fontSize: 16,
                                          letterSpacing: 0.3,
                                          color:
                                              Palette.current.primaryWhiteSmoke,
                                        ))
                                  ]),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: PrimaryButton(
                                    title: "MAKE AN OFFER",
                                    onPressed: () {},
                                    type: PrimaryButtonType.blueNeon,
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: PrimaryButton(
                                    title: "NOTIFY ME WHEN AVAILABLE",
                                    onPressed: () {},
                                    type: PrimaryButtonType.primaryEerieBlack,
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Palette.current.primaryEerieBlack,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text("SIMILAR ITEMS",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.w300,
                                          fontFamily: "Knockout",
                                          fontSize: 30,
                                          color: Palette.current.white)),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Stack(
                                          children: [
                                            Image.asset(
                                              'assets/images/ItemDetail.png',
                                              fit: BoxFit.cover,
                                            ),
                                            Positioned(
                                                top: 0,
                                                right: 0,
                                                child: IconButton(
                                                  icon: const Icon(Icons.add),
                                                  tooltip: 'Open shopping cart',
                                                  onPressed: () {
                                                    // handle the press
                                                  },
                                                )),
                                          ],
                                        ),
                                        Text("EL GRANDE SHERBET BLADE",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayLarge!
                                                .copyWith(
                                                    letterSpacing: 1,
                                                    fontWeight: FontWeight.w300,
                                                    fontFamily: "Knockout",
                                                    fontSize: 30,
                                                    color:
                                                        Palette.current.white)),
                                        Text("FOR SALE: 675.00",
                                            overflow: TextOverflow.fade,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(
                                                    fontWeight: FontWeight.w300,
                                                    color: Palette.current
                                                        .primaryNeonGreen)),
                                      ],
                                    )),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                    flex: 2,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Stack(
                                          children: [
                                            Image.asset(
                                              'assets/images/ItemDetail.png',
                                              fit: BoxFit.cover,
                                            ),
                                            Positioned(
                                                top: 0,
                                                right: 0,
                                                child: IconButton(
                                                  icon: const Icon(Icons.add),
                                                  tooltip: 'Open shopping cart',
                                                  onPressed: () {
                                                    // handle the press
                                                  },
                                                )),
                                          ],
                                        ),
                                        Text("EL GRANDE SHERBET BLADE",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayLarge!
                                                .copyWith(
                                                    letterSpacing: 1,
                                                    fontWeight: FontWeight.w300,
                                                    fontFamily: "Knockout",
                                                    fontSize: 30,
                                                    color:
                                                        Palette.current.white)),
                                        Text("FOR SALE: 675.00",
                                            overflow: TextOverflow.fade,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(
                                                    fontWeight: FontWeight.w300,
                                                    color: Palette.current
                                                        .primaryNeonGreen)),
                                      ],
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
          }))
        ],
      ),
    );
  }
}
