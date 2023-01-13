import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/explore/i_explore_service.dart';
import '../../models/explore/explore_item_model.dart';

part 'explore_bloc.freezed.dart';
part 'explore_event.dart';
part 'explore_state.dart';

class ExploreBloc extends Bloc<ExploreEvent, ExploreState> {
  final IExploreService exploreService;

  ExploreBloc(this.exploreService) : super(ExploreState.initial()) {
    add(const ExploreEvent.getExploreItems());
  }

  Stream<ExploreState> get authStateStream async* {
    yield state;
    yield* stream;
  }

  @override
  Stream<ExploreState> mapEventToState(ExploreEvent event) async* {
    yield* event.when(
      getExploreItems: _getExploreItems,
    );
  }

  Stream<ExploreState> _getExploreItems() async* {
    yield ExploreState.initial();
    try {
      await Future.delayed(const Duration(milliseconds: 2000), () {});
      // await searchService.getCatatogItems();
      final responseBody = [
        {
          "image":
              "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Group%2017.png?alt=media&token=9b406e3c-2a74-42c2-8870-67f6ba9b032c",
        },
        {
          "image":
              "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Group%2019.png?alt=media&token=c3320f4d-9072-4047-8867-5da1a1db017f",
        },
        {
          "image":
              "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Group%2020.png?alt=media&token=00c5fab0-9985-4a42-8ef5-00e7509f78e3",
        }
      ];
      final response =
          responseBody.map((i) => ExploreItemModel.fromJson(i)).toList();
      yield ExploreState.loadedExploreItems(exploreList: response);
    } catch (e) {
      yield ExploreState.error(HandlingErrors().getError(e));
    }
  }
}
