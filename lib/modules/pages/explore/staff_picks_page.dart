import 'package:flutter/material.dart';
import 'package:simple_rich_text/simple_rich_text.dart';

import '../../../generated/l10n.dart';
import '../../common/ui/clickable_text.dart';
import '../../common/utils/palette.dart';
import 'slide_horizontal_widget.dart';

class StaffPicksPage extends StatelessWidget {
  const StaffPicksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(S.of(context).staff_picks,
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "KnockoutCustom",
                                    letterSpacing: 0.3,
                                    color: Palette.current.primaryWhiteSmoke,
                                  )),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: ClickableText(
                          title: SimpleRichText(S.of(context).See_All,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontSize: 16,
                                    letterSpacing: 0.3,
                                    color: Palette.current.primaryWhiteSmoke,
                                  )),
                          onPressed: () {},
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 180.0,
          child: ListView(
            padding: const EdgeInsets.all(10.0),
            scrollDirection: Axis.horizontal,
            children: const <Widget>[
              HorizontalSlideWidget('assets/images/putter.png'),
              SizedBox(
                width: 10.0,
              ),
              HorizontalSlideWidget('assets/images/putter.png'),
              SizedBox(
                width: 10.0,
              ),
              HorizontalSlideWidget('assets/images/putter.png'),
              SizedBox(
                width: 10.0,
              ),
              HorizontalSlideWidget('assets/images/putter.png'),
            ],
          ),
        ),
      ],
    );
  }
}
