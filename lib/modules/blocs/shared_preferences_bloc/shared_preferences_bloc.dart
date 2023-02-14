import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/shared_preferences/shared_preferences_service.dart';

part 'shared_preferences_event.dart';
part 'shared_preferences_state.dart';
part 'shared_preferences_bloc.freezed.dart';

class SharedPreferencesBloc
    extends Bloc<SharedPreferencesEvent, SharedPreferencesState> {
  final PreferenceRepositoryService _preferenceRepository;
  SharedPreferencesBloc(
      {required PreferenceRepositoryService preferenceRepository})
      : _preferenceRepository = preferenceRepository,
        super(const SharedPreferencesState.initial(true));

  @override
  Stream<SharedPreferencesState> mapEventToState(
    SharedPreferencesEvent event,
  ) async* {
    yield* event.when(
      setIsListView: _setIsListView,
      setSortBy: _setSortBy,
    );
  }

  Stream<SharedPreferencesState> _setIsListView(bool isListView) async* {
    await _preferenceRepository.saveIsListView(isListView);
    yield SharedPreferencesState.setIsListView(isListView);
  }

  Stream<SharedPreferencesState> _setSortBy(int value) async* {
    await _preferenceRepository.setSortBy(value);
    yield SharedPreferencesState.setSortBy(value);
  }
}
