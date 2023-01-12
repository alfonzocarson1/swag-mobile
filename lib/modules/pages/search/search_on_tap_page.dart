import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/ui/pushed_header.dart';
import 'package:swagapp/modules/common/ui/search_input.dart';
import 'package:swagapp/modules/common/utils/custom_route_animations.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

class SearchOnTapPage extends StatelessWidget {
  static const name = '/searchOnTap';
  final TextEditingController _textEditingController;
  final FocusNode _focusNode = FocusNode()..requestFocus();

  static Route route(TextEditingController textEditingController) =>
      PageRoutes.fade(
        settings: const RouteSettings(name: name),
        builder: (_) => SearchOnTapPage(textEditingController),
      );

  SearchOnTapPage(this._textEditingController, {super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _textEditingController.clear();
        // context.read<CategoryBloc>().add(const CategoryEvent.refresh());
        // context.read<SearchBloc>().add(const SearchEvent.reset());
        return true;
      },
      child: Scaffold(
        appBar: PushedHeader(
          customWidget: Padding(
            padding: const EdgeInsets.only(left: 0, right: 16, top: 0),
            child: SearchInput(
              resultViewBuilder: (_, controller) => Container(),
              hint: S.of(context).search_hint,
              showIconAlways: true,
              prefixIcon: Image.asset(
                "assets/icons/Search.png",
                height: 24,
                width: 24,
              ),
              suffixIcon: Icon(
                Icons.close,
                color: Palette.current.primaryWhiteSmoke,
              ),
              focusNode: _focusNode,
              controller: _textEditingController,
              onCancel: () => Navigator.pop(context),
              //     context.read<SearchBloc>().add(const SearchEvent.reset()),
              // onChanged: (value) =>
              //     context.read<SearchBloc>().add(SearchEvent.search(value)),
            ),
          ),
          height: 180,
        ),
        backgroundColor: Palette.current.primaryNero,
        body: SafeArea(
          child: Column(
            children: [
              // Expanded(
              //   child: SimpleSearchResult(
              //     textController: _textEditingController,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
