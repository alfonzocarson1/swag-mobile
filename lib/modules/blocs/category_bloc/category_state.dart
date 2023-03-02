part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  CategoryState._();
  factory CategoryState.initial() = _InitialCategoryState;
  factory CategoryState.error(final String message) = _ErrorCategorytate;
  factory CategoryState.loadedCategories({
    required final List<CategoryListModel> categoryList,
  }) = LoadedCategoriesState;
}
