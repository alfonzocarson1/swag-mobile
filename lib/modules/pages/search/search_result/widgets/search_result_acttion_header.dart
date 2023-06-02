import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/blocs/search_bloc.dart/search_bloc.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

import '../../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../../di/injector.dart';
import '../../../login/create_account_page.dart';

class SearchResultActionHeader extends StatefulWidget {

  final String searchParam;

  const SearchResultActionHeader({
    super.key, 
    required this.searchParam,
  });

  @override
  State<SearchResultActionHeader> createState() => _SearchResultActionHeaderState();
}

class _SearchResultActionHeaderState extends State<SearchResultActionHeader> {
  bool savedSearch = false;
  bool isLogged = false;

  @override
  void initState() {
    isLogged = getIt<PreferenceRepositoryService>().isLogged();
    super.initState();
  }


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
              icon: (!savedSearch) ? Image.asset(
                "assets/icons/heart.png",
                height: 22,
                width: 22,
              ): Image.asset(
                "assets/icons/greenHeart.png",
                height: 22,
                width: 22,
              ),
              label: Text(S.current.save_search),
              style: TextButton.styleFrom(
                backgroundColor:Colors.transparent,
                foregroundColor: Palette.current.primaryWhiteSmoke,
                textStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 15,
                  color:Palette.current.primaryWhiteSmoke,
                ),
              ),
              onPressed: () async {
                if(isLogged == true){
                        setState(() {
                  savedSearch = true;
                });           
                await context.read<SearchBloc>().saveSearchWithFilters(this.widget.searchParam);
                }
                else{
                  Navigator.of(context, rootNavigator: true)
                                  .push(CreateAccountPage.route());
                }
          
              }, 
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

