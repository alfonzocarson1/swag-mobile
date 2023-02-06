import '../../api/api_service.dart';
import 'i_listing_service.dart';

class ListingService extends IListingService {
  ListingService(this.apiService);

  final APIService apiService;

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);
}
