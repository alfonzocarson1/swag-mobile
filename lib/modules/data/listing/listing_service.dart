import '../../api/api.dart';
import '../../api/api_service.dart';
import '../../models/listing_for_sale/listing_for_sale_model.dart';
import 'i_listing_service.dart';

class ListingService extends IListingService {
  ListingService(this.apiService);

  final APIService apiService;

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);

  @override
  Future<ListingForSaleModel> createListing(ListingForSaleModel model) async {
    ListingForSaleModel response = await apiService.getEndpointData(
      endpoint: Endpoint.createListingForSale,
      method: RequestMethod.post,
      body: model.toJson(),
      needBearer: true,
      fromJson: (json) => ListingForSaleModel.fromJson(json),
    );
    return response;
  }
}
