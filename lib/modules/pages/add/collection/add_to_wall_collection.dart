import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/pages/add/collection/select_item_page.dart';

import '../../../../generated/l10n.dart';
import '../../../blocs/collection_bloc/collection_bloc.dart';
import '../../../blocs/search_bloc.dart/search_bloc.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../common/utils/tab_wrapper.dart';
import '../../../models/search/filter_model.dart';
import '../../../models/search/search_request_payload_model.dart';

class AddToWallCollection extends StatefulWidget {
  static const name = '/AddToWallCollection';
  const AddToWallCollection({super.key});

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const AddToWallCollection(),
      );

  @override
  State<AddToWallCollection> createState() => _AddToWallCollectionState();
}

class _AddToWallCollectionState extends State<AddToWallCollection> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<SearchBloc>().add(const SearchEvent.performSearch(
        SearchRequestPayloadModel(filters: FilterModel()), SearchTab.whatsHot));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      backgroundColor: Palette.current.blackSmoke,
      body: Column(
        children: [
          Expanded(
            child: LayoutBuilder(builder: (context, viewportConstraints) {
              return SingleChildScrollView(
                physics: ClampingScrollPhysics(),
                child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: viewportConstraints.maxHeight,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                          S
                                              .of(context)
                                              .add_to_wall_collection_title,
                                          textAlign: TextAlign.left,
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayMedium!
                                              .copyWith(
                                                fontFamily: "KnockoutCustom",
                                                fontSize: 44,
                                                fontWeight: FontWeight.w300,
                                                color: Palette
                                                    .current.primaryNeonGreen,
                                              )),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                          S
                                              .of(context)
                                              .add_to_wall_collection_subtitle,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                fontSize: 15,
                                                letterSpacing: 0.3,
                                                color: Palette
                                                    .current.primaryWhiteSmoke,
                                              )),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                right: 5,
                                top: 20,
                                child: IconButton(
                                  iconSize: 30,
                                  color: Palette.current.primaryNeonGreen,
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: const Icon(
                                    Icons.clear_outlined,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context, rootNavigator: true)
                                  .push(SelectItemPage.route(1));
                            },
                            child: Image.asset(
                              'assets/images/headcover.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context, rootNavigator: true)
                                  .push(SelectItemPage.route(2));
                            },
                            child: Image.asset(
                              'assets/images/putter.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context, rootNavigator: true)
                                  .push(SelectItemPage.route(3));
                            },
                            child: Image.asset(
                              'assets/images/accessory.png',
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    )),
              );
            }),
          ),
        ],
      ),
    );
  }
}
