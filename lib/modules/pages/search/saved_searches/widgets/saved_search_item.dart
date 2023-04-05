import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:swagapp/modules/models/saved_searches/search_values.dart';

import '../../../../common/utils/palette.dart';
import '../../../../common/utils/utils.dart';
import '../../../../models/search/filter_model.dart';
import '../../../../models/search/search_request_payload_model.dart';
import '../../search_result/search_result_page.dart';

class SavedSearchItem extends StatelessWidget {

  final String searchParam; 
  final SearchValues searchFilters;
  
  const SavedSearchItem({
    super.key, 
    required this.searchParam, 
    required this.searchFilters,
  });

  SearchRequestPayloadModel getPayload(){
    SearchRequestPayloadModel payload = SearchRequestPayloadModel(
    searchParams: searchParam.isNotEmpty ? [searchParam] : null,
    filters: FilterModel(
      conditions: searchFilters.conditions,
      releaseYears: searchFilters.releaseYears,
      priceRanges: searchFilters.priceRanges
    ),
    );
    return payload;
  }

  

  @override
  Widget build(BuildContext context) {
    

    return InkWell(
      onTap: () {
        Navigator.pop(context);
        PersistentNavBarNavigator.pushNewScreen(
          context,
          screen: SearchResultPage(
            searchParam:searchParam,
            searchWithFilters: getPayload(),
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