import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/blocs/search_bloc.dart/search_bloc.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

class SearchResultActionHeader extends StatelessWidget {

  final String searchParam;

  const SearchResultActionHeader({
    super.key, 
    required this.searchParam,
  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
              icon: Image.asset(
                "assets/icons/heart.png",
                height: 22,
                width: 22,
              ),
              label: Text(S.current.save_search),
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
                foregroundColor: Palette.current.primaryWhiteSmoke,
                textStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 15,
                  color: Palette.current.primaryWhiteSmoke,
                ),
              ),
              onPressed: () async => await context.read<SearchBloc>().saveSearchWithFilters(this.searchParam),
            ),
            Text(
              "${S.of(context).sort} Release Date",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 14,
                color: Palette.current.primaryWhiteSmoke,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

