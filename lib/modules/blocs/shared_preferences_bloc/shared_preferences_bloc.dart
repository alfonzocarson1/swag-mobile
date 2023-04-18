import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../models/shared_preferences/shared_preference_model.dart';

part 'shared_preferences_event.dart';
part 'shared_preferences_state.dart';
part 'shared_preferences_bloc.freezed.dart';

class SharedPreferencesBloc
    extends Bloc<SharedPreferencesEvent, SharedPreferencesState> {
  final PreferenceRepositoryService _preferenceRepository;
  SharedPreferencesBloc(
      {required PreferenceRepositoryService preferenceRepository})
      : _preferenceRepository = preferenceRepository,
        super(const SharedPreferencesState.setPreference(
            SharedPreferenceModel()));

  @override
  Stream<SharedPreferencesState> mapEventToState(
    SharedPreferencesEvent event,
  ) async* {
    yield* event.when(
      setPreference: _setPreference,
    );
  }

  Stream<SharedPreferencesState> _setPreference(SharedPreferenceModel model) async* {

    await _preferenceRepository.saveIsListView(model.isListView);
    await _preferenceRepository.saveIsForSale(model.isForSale);
    await _preferenceRepository.setSortBy(model.sortBy);
    await _preferenceRepository.setCondition(model.condition.map((el) => el.toString()).toList());
    await _preferenceRepository.setPrice(model.price.map((el) => el.toString()).toList());
    await _preferenceRepository.setReleaseDate(model.releaseDate.map((el) => el.toString()).toList());
    await _preferenceRepository.setProduct(model.product.map((el) => el.toString()).toList());
    await _preferenceRepository.saveCollection(model.collection);
    await _preferenceRepository.saveThemes(model.theme);
    await _preferenceRepository.saveTypes(model.type);
    
    yield SharedPreferencesState.setPreference(model);
  }
}
