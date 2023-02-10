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
  final SharedPreferencesState _initialState;
  SharedPreferencesBloc(
      {required PreferenceRepositoryService preferenceRepository,
      required bool initIsListView})
      : _preferenceRepository = preferenceRepository,
        _initialState = SharedPreferencesState.initial(initIsListView),
        super(SharedPreferencesState.initial(initIsListView));

  SharedPreferencesState get initialState => _initialState;

  @override
  Stream<SharedPreferencesState> mapEventToState(
    SharedPreferencesEvent event,
  ) async* {
    yield* event.when(setIsListView: _setIsListView, init: _initial);
  }

  Stream<SharedPreferencesState> _setIsListView(bool isListView) async* {
    await _preferenceRepository.saveIsListView(isListView);
    yield SharedPreferencesState.setIsListView(isListView);
  }

  Stream<SharedPreferencesState> _initial(bool isListView) async* {
    await _preferenceRepository.saveIsListView(isListView);
    yield SharedPreferencesState.initial(isListView);
  }
}
