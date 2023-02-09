import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/constants/constants.dart';

import '../../../generated/l10n.dart';
import '../../blocs/shared_preferences_bloc/shared_preferences_bloc.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';

class FiltersBottomSheet extends StatefulWidget {
  const FiltersBottomSheet({Key? key}) : super(key: key);

  static Route route(final BuildContext context) => PageRoutes.modalBottomSheet(
        isScrollControlled: true,
        settings: const RouteSettings(name: '/update-avatar-bottom-sheet'),
        builder: (context) => const FiltersBottomSheet(),
        context: context,
      );

  @override
  _FiltersBottomSheetState createState() => _FiltersBottomSheetState();
}

class _FiltersBottomSheetState extends State<FiltersBottomSheet> {
  final FocusNode _focusNode = FocusNode();
  bool isListView = true;
  bool isForSale = false;

  @override
  void initState() {
    isListView = getIt<PreferenceRepositoryService>().isListView();
    isForSale = getIt<PreferenceRepositoryService>().isForSale();
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Container(
          decoration: BoxDecoration(
            color: Palette.current.primaryEerieBlack,
            borderRadius: BorderRadius.circular(15),
          ),
          constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height * 0.90,
              maxHeight: MediaQuery.of(context).size.height * 0.90),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 0.0),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Palette.current.primaryNeonGreen,
                        )),
                  ),
                  Text(
                    S.of(context).filters_title.toUpperCase(),
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontFamily: "Knockout",
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 1.0,
                        color: Palette.current.primaryWhiteSmoke),
                  ),
                  // const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Text(
                      "${S.of(context).clear_all}    ",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Palette.current.primaryNeonGreen),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Expanded(
                child: LayoutBuilder(builder: (context, viewportConstraints) {
                  return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: viewportConstraints.maxHeight,
                      ),
                      child: Column(
                        children: [
                          _filterItem(context, S.of(context).view.toUpperCase(),
                              buttons: Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (!isListView) {
                                          isListView = !isListView;
                                        }
                                      });
                                      context.read<SharedPreferencesBloc>().add(
                                          SharedPreferencesEvent.setIsListView(
                                              isListView));
                                    },
                                    child: Image.asset(
                                      'assets/images/server.png',
                                      color: isListView
                                          ? Palette.current.primaryNeonGreen
                                          : Palette.current.darkGray,
                                      height: 20,
                                      width: 20,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (isListView) {
                                          isListView = !isListView;
                                        }
                                      });
                                      context.read<SharedPreferencesBloc>().add(
                                          SharedPreferencesEvent.setIsListView(
                                              isListView));
                                    },
                                    child: Icon(
                                      Icons.grid_view,
                                      color: !isListView
                                          ? Palette.current.primaryNeonGreen
                                          : Palette.current.darkGray,
                                      size: 22,
                                    ),
                                  )
                                ],
                              )),
                          _filterItem(
                            context,
                            S.of(context).for_sale.toUpperCase(),
                            buttons: IconButton(
                              onPressed: () {
                                setState(() {
                                  isForSale = !isForSale;
                                });
                              },
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              icon: Image.asset(
                                'assets/icons/ForSale.png',
                                color: isForSale
                                    ? Palette.current.primaryNeonGreen
                                    : Palette.current.darkGray,
                                height: 20,
                                width: 20,
                              ),
                            ),
                          ),
                          _filterItem(
                              context, S.of(context).product.toUpperCase()),
                          _filterItem(
                              context, S.of(context).sort_by.toUpperCase(),
                              selection: S.of(context).release_date_newest),
                          _filterItem(
                              context, S.of(context).type.toUpperCase()),
                          _filterItem(
                              context, S.of(context).collections.toUpperCase()),
                          _filterItem(
                              context, S.of(context).condition.toUpperCase(),
                              selection: S.of(context).sealed),
                          _filterItem(context,
                              S.of(context).release_date.toUpperCase()),
                          _filterItem(context,
                              S.of(context).rarity_score.toUpperCase()),
                          _filterItem(
                              context, S.of(context).price_range.toUpperCase()),
                          _filterItem(
                              context, S.of(context).theme.toUpperCase(),
                              isSeparatorNeeded: false),
                          _actionButtonSection(context),
                          const SizedBox(
                            height: 40,
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ));
  }

  Widget _actionButtonSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: PrimaryButton(
            title: S.of(context).see_results.toUpperCase(),
            onPressed: () {},
            type: PrimaryButtonType.primaryEerieBlack,
          ),
        ),
      ],
    );
  }

  Widget _filterItem(BuildContext context, String title,
      {Widget? buttons,
      String selection = defaultString,
      bool isSeparatorNeeded = true}) {
    return Material(
      color: Palette.current.primaryEerieBlack,
      child: InkWell(
        onTap: () {},
        splashColor: Palette.current.primaryNero,
        child: Column(
          children: [
            Container(
              height: 62,
              decoration: const BoxDecoration(),
              child: Padding(
                padding: EdgeInsets.only(
                    right: buttons != null ? 15 : 20.0, left: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: RichText(
                        maxLines: 1,
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(children: [
                          TextSpan(
                              text: title,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(
                                      color: Palette.current.primaryWhiteSmoke,
                                      fontSize: 16)),
                        ]),
                      ),
                    ),
                    const Spacer(),
                    selection != defaultString
                        ? Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: Text(
                              selection,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: Palette.current.primaryNeonGreen),
                            ),
                          )
                        : Container(),
                    const SizedBox(
                      width: 6,
                    ),
                    buttons ??
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 10,
                          color: Palette.current.darkGray,
                        )
                  ],
                ),
              ),
            ),
            isSeparatorNeeded
                ? Container(
                    color: Palette.current.darkGray,
                    height: 0.35,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
