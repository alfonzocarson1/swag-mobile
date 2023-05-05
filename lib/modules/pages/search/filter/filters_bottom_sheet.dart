import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/constants/constants.dart';
import 'package:swagapp/modules/pages/search/filter/filter_category_page.dart';

import '../../../../generated/l10n.dart';
import '../../../blocs/shared_preferences_bloc/shared_preferences_bloc.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../common/utils/tab_wrapper.dart';
import '../../../common/utils/utils.dart';
import '../../../cubits/paginated_search/paginated_search_cubit.dart';
import '../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../di/injector.dart';
import '../../../models/search/filter_model.dart';
import '../../../models/search/search_request_payload_model.dart';
import '../../../models/shared_preferences/shared_preference_model.dart';

class FiltersBottomSheet extends StatefulWidget {
  const FiltersBottomSheet({Key? key, this.searchParam, this.tab})
      : super(key: key);
  final String? searchParam;
  final SearchTab? tab;

  static Route route(final BuildContext context,
          {String? searchParam, SearchTab? tab}) =>
      PageRoutes.modalBottomSheet(
        isScrollControlled: true,
        enableDrag: false,
        isDismissible: false,
        settings: const RouteSettings(name: '/update-avatar-bottom-sheet'),
        builder: (context) => FiltersBottomSheet(
          searchParam: searchParam,
          tab: tab,
        ),
        context: context,
      );

  @override
  _FiltersBottomSheetState createState() => _FiltersBottomSheetState();
}

class _FiltersBottomSheetState extends State<FiltersBottomSheet> {
  final FocusNode _focusNode = FocusNode();
  bool isListView = true;
  bool isForSale = false;
  String categoryId = "";
  FilterModel filters = FilterModel();

  @override
  void initState() {
    getTabId(widget.tab ?? SearchTab.all);
    isListView = getIt<PreferenceRepositoryService>().isListView();
    isForSale = getIt<PreferenceRepositoryService>().isForSale();
    super.initState();
  }

  @override
  void didChangeDependencies() async {
    filters = await getCurrentFilterModel();
    super.didChangeDependencies();
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
                        size: 24,
                        color: Palette.current.primaryNeonGreen,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    S.of(context).filters_title.toUpperCase(),
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontFamily: "KnockoutCustom",
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 1.0,
                        color: Palette.current.primaryWhiteSmoke),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    initFilterAndSortsWithBloc(context,
                        selectedProductNumber: widget.tab?.index ?? defaultInt);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent)),
                  child: Text(
                    S.of(context).clear_all,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Palette.current.primaryNeonGreen),
                  ),
                )
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
                        _filterItem(
                          context,
                          S.of(context).view.toUpperCase(),
                          () {},
                          buttons: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    if (!isListView) {
                                      isListView = !isListView;
                                    }
                                  });
                                  setIsListView();
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
                                  setIsListView();
                                },
                                child: Icon(
                                  Icons.grid_view,
                                  color: !isListView
                                      ? Palette.current.primaryNeonGreen
                                      : Palette.current.darkGray,
                                  size: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                        _filterItem(
                          context,
                          S.of(context).for_sale.toUpperCase(),
                          () {},
                          buttons: IconButton(
                            onPressed: () {
                              setState(() {
                                isForSale = !isForSale;
                              });
                              setIsForSale();
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
                          context,
                          S.of(context).product.toUpperCase(),
                          (widget.tab == SearchTab.whatsHot ||
                                  widget.tab == SearchTab.all ||
                                  widget.tab == null)
                              ? () => this.navigateToCategoryPage(
                                  FilterType.product, categoryId)
                              : null,
                        ),
                        _filterItem(
                          context,
                          S.of(context).sort_by.toUpperCase(),
                          () => this.navigateToCategoryPage(
                              FilterType.sortBy, categoryId),
                          selection: S.of(context).release_date_newest,
                        ),
                        _filterItem(
                          context,
                          S.of(context).type.toUpperCase(),
                          (widget.tab == SearchTab.headcovers ||
                                  widget.tab == SearchTab.putters ||
                                  widget.tab == null)
                              ? () => this.navigateToCategoryPage(
                                  FilterType.type, categoryId)
                              : null,
                        ),
                        _filterItem(
                          context,
                          S.of(context).collections.toUpperCase(),
                          () => this.navigateToCategoryPage(
                              FilterType.collection, categoryId),
                        ),
                        _filterItem(
                            context,
                            S.of(context).condition.toUpperCase(),
                            () => this.navigateToCategoryPage(
                                FilterType.condition, categoryId),
                            selection: S.of(context).sealed),
                        _filterItem(
                          context,
                          S.of(context).release_date.toUpperCase(),
                          () => this.navigateToCategoryPage(
                              FilterType.releaseDate, categoryId),
                        ),
                        _filterItem(
                          context,
                          S.of(context).price_range.toUpperCase(),
                          () => this.navigateToCategoryPage(
                              FilterType.price, categoryId),
                        ),
                        _filterItem(
                          context,
                          S.of(context).theme.toUpperCase(),
                          () => this.navigateToCategoryPage(
                              FilterType.theme, categoryId),
                          isSeparatorNeeded: false,
                        ),
                        _actionButtonSection(context),
                        const SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToCategoryPage(FilterType type, String categoryId) {
    Navigator.of(context, rootNavigator: true).push(
      FilterCategoryPage.route(
        context,
        categoryId,
        type,
        isMultipleSelection: true,
        searchParam: this.widget.searchParam,
        tab: this.widget.tab,
      ),
    );
  }

  void setIsListView() {
    final preference = context.read<SharedPreferencesBloc>().state.model;
    context.read<SharedPreferencesBloc>().add(
        SharedPreferencesEvent.setPreference(
            preference.copyWith(isListView: isListView)));
  }

  void setIsForSale() {
    final preference = context.read<SharedPreferencesBloc>().state.model;
    context.read<SharedPreferencesBloc>().add(
        SharedPreferencesEvent.setPreference(
            preference.copyWith(isForSale: isForSale)));
  }

  getTabId(SearchTab tab) async {
    categoryId = await SearchTabWrapper(tab).toStringCustom() ?? "";
    Future.delayed(const Duration(milliseconds: 500));
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
            onPressed: () {
              apiCall();
              Navigator.pop(context);
            },
            type: PrimaryButtonType.primaryEerieBlack,
          ),
        ),
      ],
    );
  }

  Widget _filterItem(
    BuildContext context,
    String title,
    Function()? onTap, {
    Widget? buttons,
    String selection = defaultString,
    bool isSeparatorNeeded = true,
  }) {
    return Material(
      color: Palette.current.primaryEerieBlack,
      child: InkWell(
        onTap: onTap,
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
                                  .bodySmall!
                                  .copyWith(
                                      color: Palette.current.primaryWhiteSmoke,
                                      fontSize: 16)),
                        ]),
                      ),
                    ),
                    const Spacer(),
                    BlocBuilder<SharedPreferencesBloc, SharedPreferencesState>(
                        builder: (context, stateSharedPreferences) {
                      return stateSharedPreferences.map(
                        setPreference: (state) =>
                            getSelectedWidget(title, state.model),
                      );
                    }),
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

  Widget getSelectedWidget(String title, SharedPreferenceModel model) {
    if (title == S.of(context).sort_by.toUpperCase()) {
      return getSelectedText(context, FilterType.sortBy, index: model.sortBy);
    } else if (title == S.of(context).product.toUpperCase()) {
      return getSelectedText(context, FilterType.product,
          index: model.product.isEmpty ? null : model.product[0],
          length: model.product.length);
    } else if (title == S.of(context).condition.toUpperCase()) {
      return getSelectedText(context, FilterType.condition,
          index: model.condition.isEmpty ? null : model.condition[0],
          length: model.condition.length);
    } else if (title == S.of(context).price_range.toUpperCase()) {
      return getSelectedText(context, FilterType.price,
          index: model.price.isEmpty ? null : model.price[0],
          length: model.price.length);
    } else if (title == S.of(context).release_date.toUpperCase()) {
      return getSelectedText(context, FilterType.releaseDate,
          index: model.releaseDate.isEmpty ? null : model.releaseDate[0],
          length: model.releaseDate.length);
    } else {
      return Container();
    }
  }

  Widget getSelectedText(BuildContext context, FilterType type,
      {int? index, int? length}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Text(
        getText(type, index: index, length: length),
        style: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(color: Palette.current.primaryNeonGreen),
      ),
    );
  }

  String getText(FilterType type, {int? index, int? length}) {
    switch (type) {
      case FilterType.product:
        return index == null
            ? defaultString
            : length == 1
                ? ProductWrapper(Product.values.elementAt(index)).toString()
                : "$length ${S.of(context).selected}";
      case FilterType.condition:
        return index == null
            ? defaultString
            : length == 1
                ? ConditionWrapper(Condition.values.elementAt(index)).toString()
                : "$length ${S.of(context).selected}";
      case FilterType.price:
        return index == null
            ? defaultString
            : length == 1
                ? PriceWrapper(Price.values.elementAt(index)).toString()
                : "$length ${S.of(context).selected}";
      case FilterType.sortBy:
        return SortByWrapper(SortBy.values.elementAt(
                index ?? getIt<PreferenceRepositoryService>().getSortBy()))
            .toString();
      case FilterType.releaseDate:
        return index == null
            ? defaultString
            : length == 1
                ? ReleaseDateWrapper(ReleaseDate.values.elementAt(index))
                    .toString()
                : "$length ${S.of(context).selected}";

      case FilterType.collection:
        return '';
      case FilterType.theme:
        return '';
      case FilterType.type:
        return '';
    }
  }

  void apiCall() async {
    filters = await getCurrentFilterModel();
    getIt<PaginatedSearchCubit>().loadResults(
        searchModel: SearchRequestPayloadModel(
          categoryId: (widget.tab == SearchTab.all || widget.tab == null)
              ? null
              : this.categoryId,
          whatsHotFlag: (widget.tab == SearchTab.whatsHot) ? true : false,
          searchParams: (widget.tab == SearchTab.all || widget.tab == null)
              ? [widget.searchParam ?? ""]
              : null,
          filters: FilterModel(
            sortBy: filters.sortBy,
            type: filters.type,
            theme: filters.theme,
            conditions: filters.conditions,
            collection: filters.collection,
            forSale: filters.forSale,
            productType: filters.productType,
          ),
        ),
        searchTab: widget.tab ?? SearchTab.all);
  }
}
