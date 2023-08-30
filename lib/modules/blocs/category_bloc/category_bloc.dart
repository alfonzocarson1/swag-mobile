import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/api/api.dart';

import '../../../main.dart';
import '../../common/utils/handling_errors.dart';
import '../../data/category/i_category_service.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/search/category_list_model.dart';
import '../../services/internet_connectivity_service.dart';

part 'category_bloc.freezed.dart';

part 'category_event.dart';

part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final ICategoryService categoryService;

  CategoryBloc(this.categoryService) : super(CategoryState.initial());

  Stream<CategoryState> get authStateStream async* {
    yield state;
    yield* stream;
  }

  @override
  Stream<CategoryState> mapEventToState(CategoryEvent event) async* {
    yield* event.when(getCategories: _getCategories);
  }

  Stream<CategoryState> _getCategories() async* {
    try {
      CategoryListModel responseBody =
          await categoryService.catalogCategories();

      List<dynamic> sharedCategoriesData =
          await getIt<PreferenceRepositoryService>().getLastCategories();

      if ('${responseBody.categoryList}' != "$sharedCategoriesData") {
        getIt<PreferenceRepositoryService>().saveLastCategories(responseBody);
      }

      yield CategoryState.loadedCategories(categoryList: [responseBody]);
    } catch (e) {
      logger.e(" Exception :${e}");

      // // Create the VPNConnectivityBloc instance
      // final VPNConnectivityBloc _vpnConnectivityBloc = VPNConnectivityBloc();
      // // Usage in a different part of the project
      // _vpnConnectivityBloc.setVPNState(VPNConnectivityState.offline);

      InternetConnectivityBloc(true).emit(InternetConnectivityState.offline);
      //
      //
      // if (e.toString().contains("Failed host lookup")) {
      //   logger.e(" Exception :Host failed");
      //   //yield CategoryState.hostTimeOut(HandlingErrors().getError(e));
      //
      //
      //   // Create the VPNConnectivityBloc instance
      //   final VPNConnectivityBloc _vpnConnectivityBloc = VPNConnectivityBloc();
      //   // Usage in a different part of the project
      //   _vpnConnectivityBloc.setVPNState(VPNConnectivityState.offline);
      //   // // Usage in a different part of the project
      //   // VPNConnectivityBloc.vpnConnectivityBloc.emit(
      //   //     VPNConnectivityState.offline);
      // } else if (e is TimeoutException) {
      //   logger.e("Timeout Exception");
      //
      //
      // } else if (e is ApiHostScheme) {
      //   logger.e("Api Host scheme :$e");
      // } else {
      //   yield CategoryState.error(HandlingErrors().getError(e));
      // }
    }
  }
}
