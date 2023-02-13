import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';

import '../../../../generated/l10n.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../di/injector.dart';

class SortByPage extends StatefulWidget {
  const SortByPage({Key? key}) : super(key: key);
  static const name = '/sortBy';

  static Route route(final BuildContext context) => PageRoutes.modalBottomSheet(
        isScrollControlled: true,
        settings: const RouteSettings(name: '/update-avatar-bottom-sheet'),
        builder: (context) => const SortByPage(),
        context: context,
      );

  @override
  _SortByPageState createState() => _SortByPageState();
}

class _SortByPageState extends State<SortByPage> {
  final FocusNode _focusNode = FocusNode();
  bool isListView = true;
  bool isForSale = false;
  int checkBoxIndex = 0;

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
              Stack(children: [
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        S.of(context).sort_by.toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                fontFamily: "Knockout",
                                fontSize: 30,
                                fontWeight: FontWeight.normal,
                                letterSpacing: 1.0,
                                color: Palette.current.primaryWhiteSmoke),
                      ),
                    ),
                  ],
                ),
              ]),
              const SizedBox(
                height: 14,
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
                          _filterItem(
                              context, S.of(context).release_date_newest, 0),
                          _filterItem(
                              context, S.of(context).release_date_oldest, 1),
                          _filterItem(
                              context, S.of(context).price_high_to_low, 2),
                          _filterItem(
                              context, S.of(context).price_low_to_high, 3),
                          _filterItem(context, S.of(context).a_to_z, 4),
                          _filterItem(context, S.of(context).z_to_a, 5),
                        ],
                      ),
                    ),
                  );
                }),
              ),
              _actionButtonSection(context),
              const SizedBox(
                height: 40,
              )
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

  Widget _filterItem(BuildContext context, String title, int index) {
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
                padding: const EdgeInsets.only(right: 20.0, left: 0),
                child: Row(
                  children: [
                    Checkbox(
                      checkColor: Palette.current.black,
                      value: index == checkBoxIndex,
                      onChanged: (value) {
                        if (value ?? false) {
                          setState(() => checkBoxIndex = index);
                        }
                      },
                      side: BorderSide(color: Palette.current.primaryNeonGreen),
                    ),
                    Expanded(
                      child: Text(
                        title,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: Palette.current.primaryNeonGreen),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Palette.current.darkGray,
              height: 0.35,
            )
          ],
        ),
      ),
    );
  }
}
