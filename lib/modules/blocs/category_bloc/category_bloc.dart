import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/category/i_category_service.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/search/category_list_model.dart';

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
      print(responseBody.categoryList);

      getIt<PreferenceRepositoryService>().saveLastCategories(responseBody);

      yield CategoryState.loadedCategories(categoryList: [responseBody]);
    } catch (e) {
      yield CategoryState.error(HandlingErrors().getError(e));
    }
  }
}
