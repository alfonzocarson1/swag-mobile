import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/context_service.dart';
import '../../common/utils/handling_errors.dart';
import '../../cubits/route_history/route_history_cubit.dart';
import '../../data/buy_for_sale_listing/i_buy_for_sale_listing_service.dart';
import '../../di/injector.dart';
import '../../models/buy_for_sale_listing/buy_for_sale_listing_response_model.dart';
import '../../notifications_providers/local_notifications_providers.dart';
import '../detail_bloc/detail_bloc.dart';

part 'buy_sale_listing_bloc.freezed.dart';
part 'buy_sale_listing_event.dart';
part 'buy_sale_listing_state.dart';

class BuySaleListingBloc
    extends Bloc<BuySaleListingEvent, BuySaleListingState> {
  final IBuyForSaleListingService buySaleListingService;

  BuySaleListingBloc(this.buySaleListingService)
      : super(BuySaleListingState.initial());

  Stream<BuySaleListingState> get authStateStream async* {
    yield state;
    yield* stream;
  }

  @override
  Stream<BuySaleListingState> mapEventToState(
      BuySaleListingEvent event) async* {
    yield* event.when(
      getBuyListingItem: _getBiySaleListingItem,
    );
  }

  Stream<BuySaleListingState> _getBiySaleListingItem(
      String catalogItemId) async* {
    yield BuySaleListingState.initial();
    try {
      BuyForSaleListingResponseModel responseBody =
          await buySaleListingService.buyForSaleListing(catalogItemId);

      if (responseBody.saledItemdList.isEmpty) {
        LocalNotificationProvider.showInAppAllert('Listing unavailable');
        getIt<ContextService>().rootNavigatorKey.currentState!.pop();
        getIt<DetailBloc>().add(DetailEvent.getDetailItem(catalogItemId));
      } else {
        yield BuySaleListingState.loadedSaledItems(
            saledItemdList: [responseBody]);
      }
    } catch (e) {
      yield BuySaleListingState.error(HandlingErrors().getError(e));
    }
  }
}
