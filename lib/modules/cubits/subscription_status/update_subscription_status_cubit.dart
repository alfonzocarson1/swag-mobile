import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/data/paywall/i_paywall_service.dart';
import 'package:swagapp/modules/models/paywall/subscription_change_status.dart';
import 'package:swagapp/modules/models/paywall/subscription_status_response.dart';

part 'update_subscription_status_state.dart';
part 'update_subscription_status_cubit.freezed.dart';

class UpdateSubscriptionStatusCubit extends Cubit<UpdateSubscriptionStatusState> {
  UpdateSubscriptionStatusCubit(this.paywallService) : super(UpdateSubscriptionStatusState.initial());
  final IPaywallService paywallService;

  Future<PaywallSubscriptionResponse?> UpdateSubscriptionStatus(PaywallSubscriptionRequest request)async {
   var response = await paywallService.completeSubscription(request);

    return response;
  }
}
