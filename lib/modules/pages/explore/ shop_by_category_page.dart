import 'package:flutter/material.dart';
import 'package:simple_rich_text/simple_rich_text.dart';

import '../../../generated/l10n.dart';
import '../../common/ui/clickable_text.dart';
import '../../common/utils/palette.dart';
import '../../cubits/page_from_explore/page_from_explore_cubit.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';

class ShopByCategory extends StatefulWidget {
  const ShopByCategory({super.key, required this.pageFromExplore});
  final Function() pageFromExplore;

  @override
  State<ShopByCategory> createState() => _ShopByCategoryState();
}

class _ShopByCategoryState extends State<ShopByCategory> {
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
                      child: Text(S.of(context).shop_by_category_title,
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
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            widget.pageFromExplore();
            getIt<PreferenceRepositoryService>().setPageFromExplore(1);
            getIt<PageFromExploreCubit>().loadResults(1);
          },
          child: Image.asset(
            'assets/images/headcover.png',
            fit: BoxFit.cover,
          ),
        ),
        GestureDetector(
          onTap: () {
            widget.pageFromExplore();
            getIt<PreferenceRepositoryService>().setPageFromExplore(2);
            getIt<PageFromExploreCubit>().loadResults(2);
          },
          child: Image.asset(
            'assets/images/putter.png',
            fit: BoxFit.cover,
          ),
        ),
        GestureDetector(
          onTap: () {
            widget.pageFromExplore();
            getIt<PreferenceRepositoryService>().setPageFromExplore(3);
            getIt<PageFromExploreCubit>().loadResults(3);
          },
          child: Image.asset(
            'assets/images/accessory.png',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
