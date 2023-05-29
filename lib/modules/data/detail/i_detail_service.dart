import 'package:swagapp/modules/models/notify_when_available/profile_notify_list.dart';

import '../../models/buy_for_sale_listing/buy_for_sale_listing_response_model.dart';
import '../../models/detail/detail_item_model.dart';

abstract class IDetailService {
  Stream<String?> subscribeToAuthChanges();
  Future<DetailItemModel> itemDetail(String itemId);
  Future<dynamic> notifyAvailability(String catalogId);
  Future<ProfileNotifyList> getAvailabilityStatus();
  Future<BuyForSaleListingResponseModel> buyForSaleListing(
      String catalogItemId);
}
