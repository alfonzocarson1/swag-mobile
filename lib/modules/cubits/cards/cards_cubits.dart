import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:swagapp/modules/api/stripe_api.dart';
import 'package:swagapp/modules/models/ui_models/async_value.dart';

typedef CardsCubitState = AsyncValue<List<CardObject>>;

class CardsCubit extends Cubit<CardsCubitState> {
  final StripeApi stripeApi;
  CardsCubit(this.stripeApi) : super(const CardsCubitState.loading());

  Future<void> getCards() async {
    emit(AsyncValue.loading(state.dataOrPreviousData));
    try {
      final cards = await stripeApi.getCards();
      emit(AsyncValue.loaded(cards));
    } catch (e, stk) {
      emit(AsyncValue.error(e, state.dataOrPreviousData));
      debugPrintStack(
        label: e.toString(),
        stackTrace: stk,
      );
    }
  }

  Future<void> addCard(CardTokenRequest request) async {
    try {
      final token = await stripeApi.createToken(request);
      debugPrint('Card Token Created: $token');
      final response = await stripeApi.addPaymentMethod(token);
      debugPrint('Card Token Saved On B.E: $response');
      await getCards();
    } catch (e, stk) {
      debugPrintStack(
        label: e.toString(),
        stackTrace: stk,
      );
      rethrow;
    }
  }
}
