import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:swagapp/modules/models/search/search_request_payload_model.dart';
import 'package:swagapp/modules/pages/search/search_result/search_result_page.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';

class SavedSearchesPage extends StatefulWidget {
  static const name = '/Alert';
  const SavedSearchesPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const SavedSearchesPage(),
      );

  @override
  State<SavedSearchesPage> createState() => _SavedSearchesPageState();
}

class _SavedSearchesPageState extends State<SavedSearchesPage> {
  @override
  Widget build(BuildContext context) {

    List<String> list = getIt<PreferenceRepositoryService>().getRecentSearchesWithFilters();

    return Container(
      color: Palette.current.primaryNero,
      child: ListView.builder(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        padding: const EdgeInsets.only(top: 10),
        itemBuilder: (_, index) => _ResetItem(
          searchParam: this.getSearchParam(list[index]),
          searchWithFilters: this.getSavedSearchWithFilters(list[index]),
        ),
        itemCount: list.length,
      ),
    );
  }

  String getSearchParam(String payLoadJson) {

    SearchRequestPayloadModel payloadModel = SearchRequestPayloadModel.fromJson(json.decode(payLoadJson));
    return payloadModel.searchParams?.first ?? '';
  }

  SearchRequestPayloadModel getSavedSearchWithFilters(String payLoadJson){
    return SearchRequestPayloadModel.fromJson(json.decode(payLoadJson));
  }
}

class _ResetItem extends StatelessWidget {

  final String searchParam; 
  final SearchRequestPayloadModel searchWithFilters;
  
  const _ResetItem({
    super.key, 
    required this.searchParam, 
    required this.searchWithFilters,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        PersistentNavBarNavigator.pushNewScreen(
          context,
          screen: SearchResultPage(
            searchParam:searchParam,
            searchWithFilters: this.searchWithFilters,
          ),
          withNavBar: true,
        );
      },
      child: Column(
        children: [
          Ink(
            height: 50,
            decoration: BoxDecoration(
              color: Palette.current.primaryNero,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 0),
                  child: Row(
                    children: [
                      RichText(
                        maxLines: 1,
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(children: [
                          TextSpan(
                            text: searchParam,
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                    color: Palette.current.darkGray,
                                    fontSize: 16),
                          ),
                        ]),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.close,
                            size: 20,
                            color: Palette.current.darkGray,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Palette.current.darkGray,
            height: 0.35,
          ),
        ],
      ),
    );
  }
}
