import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/models/filters/dynamic_filters.dart';
import 'package:swagapp/modules/models/shared_preferences/shared_preference_model.dart';

import '../../../../generated/l10n.dart';
import '../../../blocs/shared_preferences_bloc/shared_preferences_bloc.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../common/utils/tab_wrapper.dart';
import '../../../common/utils/utils.dart';
import '../../../constants/constants.dart';
import '../../../cubits/paginated_search/paginated_search_cubit.dart';
import '../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../di/injector.dart';
import '../../../models/search/filter_model.dart';
import '../../../models/search/search_request_payload_model.dart';

class FilterCategoryPage extends StatefulWidget {
  const FilterCategoryPage(
      {Key? key,
      required this.filterType,
      this.categoryId,
      this.searchParam,
      this.tab,
      this.isMultipleSelection = false,
      this.updateFilters})
      : super(key: key);
  static const name = '/filterCategory';
  final FilterType filterType;
  final String? searchParam;
  final SearchTab? tab;
  final bool isMultipleSelection;
  final String? categoryId;
  final VoidCallback? updateFilters;

  static Route route(
    BuildContext context,
    String categoryId,
    FilterType filterType, {
    String? searchParam,
    SearchTab? tab,
    bool isMultipleSelection = false,
    VoidCallback? updateFilters,
  }) =>
      PageRoutes.modalBottomSheet(
        isScrollControlled: true,
        enableDrag: false,
        isDismissible: false,
        settings: const RouteSettings(name: name),
        builder: (context) => FilterCategoryPage(
          updateFilters: updateFilters,
          categoryId: categoryId,
          filterType: filterType,
          searchParam: searchParam,
          tab: tab,
          isMultipleSelection: isMultipleSelection,
        ),
        context: context,
      );

  @override
  _FilterCategoryPageState createState() => _FilterCategoryPageState();
}

class _FilterCategoryPageState extends State<FilterCategoryPage> {
  final FocusNode _focusNode = FocusNode();
  List<int> checkBoxIndexes = [];
  FilterModel filters = FilterModel();

  @override
  void initState() {
    super.initState();
    initFor(widget.filterType);
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        performSearch(
          context: context,
          searchParam: widget.searchParam,
          tab: widget.tab,
        );
        return Future.value(true);
      },
      child: GestureDetector(
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
                          if (widget.updateFilters != null) {
                            widget.updateFilters!();
                          }
                          performSearch(
                            context: context,
                            searchParam: widget.searchParam,
                            tab: widget.tab,
                          );
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
                          getPageTitle(widget.filterType),
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                  fontFamily: "KnockoutCustom",
                                  fontSize: 30,
                                  fontWeight: FontWeight.w300,
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
                        child: getItemListFor(widget.filterType),
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
          )),
    );
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
              Navigator.pop(context);
            },
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
                      value: checkBoxIndexes.contains(index),
                      onChanged: (bool? value) =>
                          this.onChangedItem(value, index),
                      side: BorderSide(color: Palette.current.darkGray),
                    ),
                    Expanded(
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: checkBoxIndexes.contains(index)
                                  ? Palette.current.primaryNeonGreen
                                  : Palette.current.darkGray,
                            ),
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

  void onChangedItem(bool? value, int index) {
    setState(() {
      if (value ?? false) {
        if (value!) {
          if ((!widget.isMultipleSelection)) {
            if (checkBoxIndexes.isEmpty) {
              checkBoxIndexes.add(index);
            } else {
              checkBoxIndexes.removeAt(0);
              checkBoxIndexes.add(index);
            }
          } else if (!checkBoxIndexes.contains(index)) {
            checkBoxIndexes.add(index);
          }
        }
        //we don't let to delete unique item in case it is single selection
      } else if (widget.isMultipleSelection) {
        checkBoxIndexes.remove(index);
      }
      this.setValueByType(widget.filterType);
    });
  }

  void initFor(FilterType type) {
    DynamicFilters dynamicFilters =
        getIt<PreferenceRepositoryService>().getDynamicFilters()!;

    switch (type) {
      case FilterType.category:
        checkBoxIndexes = getIt<PreferenceRepositoryService>()
            .getProduct()
            .map(int.parse)
            .toList();
        break;
      case FilterType.condition:
        checkBoxIndexes = getIt<PreferenceRepositoryService>()
            .getCondition()
            .map(int.parse)
            .toList();
        break;
      case FilterType.price:
        checkBoxIndexes = getIt<PreferenceRepositoryService>()
            .getPrice()
            .map(int.parse)
            .toList();
        break;
      case FilterType.sortBy:
        checkBoxIndexes.add(getIt<PreferenceRepositoryService>().getSortBy());
        break;
      case FilterType.releaseDate:
        checkBoxIndexes = getIt<PreferenceRepositoryService>()
            .getReleaseDate()
            .map(int.parse)
            .toList();
        break;
      case FilterType.collection:
        List<String> selectedFilters =
            getIt<PreferenceRepositoryService>().getCollection();
        this.checkBoxIndexes = this.getDynamicFiltersIndex(
            selectedFilters, dynamicFilters.collections);
        break;
      case FilterType.theme:
        List<String> selectedFilters =
            getIt<PreferenceRepositoryService>().getThemes();
        this.checkBoxIndexes =
            this.getDynamicFiltersIndex(selectedFilters, dynamicFilters.themes);
        break;
      case FilterType.type:
        List<String> selectedFilters =
            getIt<PreferenceRepositoryService>().getTypes();
        this.checkBoxIndexes =
            this.getDynamicFiltersIndex(selectedFilters, dynamicFilters.types);
        break;
    }
  }

  List<int> getDynamicFiltersIndex(
      List<String> selectedFilters, List<String> dynamicFilters) {
    List<int> indexes = [];

    for (int i = 0; i < selectedFilters.length; i++) {
      indexes.add(dynamicFilters.indexOf(selectedFilters[i]));
    }

    return indexes;
  }

  String getPageTitle(FilterType type) {
    switch (type) {
      case FilterType.category:
        return S.of(context).category.toUpperCase();
      case FilterType.condition:
        return S.of(context).condition.toUpperCase();
      case FilterType.price:
        return S.of(context).price.toUpperCase();
      case FilterType.sortBy:
        return S.of(context).sort_by.toUpperCase();
      case FilterType.releaseDate:
        return S.of(context).release_date.toUpperCase();
      case FilterType.collection:
        return S.current.collection.toUpperCase();
      case FilterType.theme:
        return S.current.theme.toUpperCase();
      case FilterType.type:
        return S.current.type.toUpperCase();
    }
  }

  void setValueByType(FilterType type) {
    SharedPreferenceModel preference =
        context.read<SharedPreferencesBloc>().state.model;
    List<int> newList = List.from(this.checkBoxIndexes);

    switch (type) {
      case FilterType.category:
        return this.setFilterValues(preference.copyWith(product: newList));
      case FilterType.condition:
        return this.setFilterValues(preference.copyWith(condition: newList));
      case FilterType.price:
        return this.setFilterValues(preference.copyWith(price: newList));
      case FilterType.sortBy:
        return this
            .setFilterValues(preference.copyWith(sortBy: checkBoxIndexes[0]));
      case FilterType.releaseDate:
        return this.setFilterValues(preference.copyWith(releaseDate: newList));
      case FilterType.collection:
        return this.setFilterValues(preference.copyWith(
            collection: this.getSelectedDynamicFiltersById(type)));
      case FilterType.theme:
        return this.setFilterValues(preference.copyWith(
            theme: this.getSelectedDynamicFiltersById(type)));
      case FilterType.type:
        return this.setFilterValues(preference.copyWith(
            type: this.getSelectedDynamicFiltersById(type)));
    }
  }

  void setFilterValues(SharedPreferenceModel preference) {
    context
        .read<SharedPreferencesBloc>()
        .add(SharedPreferencesEvent.setPreference(preference));
  }

  List<String> getSelectedDynamicFiltersById(FilterType type) {
    List<String> items = [];
    DynamicFilters dynamicFilters =
        getIt<PreferenceRepositoryService>().getDynamicFilters()!;

    switch (type) {
      case FilterType.sortBy:
        break;
      case FilterType.condition:
        break;
      case FilterType.price:
        break;
      case FilterType.releaseDate:
        break;
      case FilterType.category:
        break;
      case FilterType.collection:
        for (var index in this.checkBoxIndexes) {
          items.add(dynamicFilters.collections[index]);
        }
        break;
      case FilterType.theme:
        for (var index in this.checkBoxIndexes) {
          items.add(dynamicFilters.themes[index]);
        }
        break;
      case FilterType.type:
        for (var index in this.checkBoxIndexes) {
          items.add(dynamicFilters.types[index]);
        }
        break;
    }

    return items;
  }

  Widget getItemListFor(FilterType type) {
    DynamicFilters? dynamicFilters =
        getIt<PreferenceRepositoryService>().getDynamicFilters();

    switch (type) {
      case FilterType.category:
        return Column(
          children: [
            _filterItem(
                context, S.of(context).headcovers, Product.headcovers.index),
            _filterItem(context, S.of(context).putters, Product.putters.index),
            _filterItem(
                context, S.of(context).accessories, Product.accessories.index),
          ],
        );
      case FilterType.condition:
        return Column(
          children: [
            _filterItem(context, S.of(context).sealed, Condition.sealed.index),
            _filterItem(
                context, S.of(context).displayed, Condition.displayed.index),
            _filterItem(context, S.of(context).gamed, Condition.gamed.index),
          ],
        );
      case FilterType.price:
        return Column(
          children: [
            _filterItem(
                context, S.of(context).less_than, Price.lessThan$111.index),
            _filterItem(context, S.of(context).b111_222, Price.$111$222.index),
            _filterItem(context, S.of(context).b222_555, Price.$222$555.index),
            _filterItem(
                context, S.of(context).b555_above, Price.$555AndAbove.index),
          ],
        );
      case FilterType.sortBy:
        return Column(
          children: [
            _filterItem(context, S.of(context).release_date_newest,
                SortBy.releaseDateNewest.index),
            _filterItem(context, S.of(context).release_date_oldest,
                SortBy.releaseDateOldest.index),
            _filterItem(context, S.of(context).price_high_to_low,
                SortBy.priceHighToLow.index),
            _filterItem(context, S.of(context).price_low_to_high,
                SortBy.priceLowToHigh.index),
            _filterItem(context, S.of(context).a_to_z, SortBy.atoZ.index),
            _filterItem(context, S.of(context).z_to_a, SortBy.ztoA.index),
          ],
        );
      case FilterType.releaseDate:
        return Column(
          children: [
            _filterItem(context, S.of(context).y2018, ReleaseDate.y2018.index),
            _filterItem(context, S.of(context).y2019, ReleaseDate.y2019.index),
            _filterItem(context, S.of(context).y2020, ReleaseDate.y2020.index),
            _filterItem(context, S.of(context).y2021, ReleaseDate.y2021.index),
            _filterItem(context, S.of(context).y2022, ReleaseDate.y2022.index),
            _filterItem(context, S.of(context).y2023, ReleaseDate.y2023.index),
          ],
        );
      case FilterType.collection:
        return (dynamicFilters != null)
            ? Column(
                children:
                    this.getDynamicFiltersItems(dynamicFilters.collections))
            : const SizedBox.shrink();

      case FilterType.theme:
        return (dynamicFilters != null)
            ? Column(
                children: this.getDynamicFiltersItems(dynamicFilters.themes))
            : const SizedBox.shrink();
      case FilterType.type:
        return (dynamicFilters != null)
            ? Column(
                children: this.getDynamicFiltersItems(dynamicFilters.types))
            : const SizedBox.shrink();
    }
  }

  List<Widget> getDynamicFiltersItems(List<String> filters) {
    List<Widget> items = [];
    if (filters.isNotEmpty) {
      for (int i = 0; i < filters.length; i++) {
        items.add(this._filterItem(context, filters[i], i));
      }
    }

    return items;
  }

  void apiCall() async {
    filters = await getCurrentFilterModel();
    getIt<PaginatedSearchCubit>().loadResults(
        searchModel: SearchRequestPayloadModel(
          categoryId: (widget.tab == SearchTab.all ||
                  widget.tab == null ||
                  widget.tab == SearchTab.whatsHot)
              ? null
              : widget.categoryId,
          whatsHotFlag: (widget.tab == SearchTab.whatsHot) ? true : false,
          staffPicksFlag: null,
          unicornFlag: null,
          searchParams: (widget.tab == SearchTab.all || widget.tab == null)
              ? [widget.searchParam ?? ""]
              : null,
          filters: FilterModel(
              sortBy: filters.sortBy,
              theme: filters.theme,
              type: filters.type,
              conditions: filters.conditions,
              collection: filters.collection,
              forSale: filters.forSale,
              productType: filters.productType,
              priceRanges: filters.priceRanges,
              releaseYears: filters.releaseYears),
        ),
        searchTab: widget.tab ?? SearchTab.all);
  }
}
