import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/listing/i_listing_service.dart';
import '../../di/injector.dart';
import '../../models/listing_for_sale/listing_for_sale_model.dart';
import '../../models/listing_for_sale/profile_listing_model.dart';

part 'get_listing_for_sale_state.dart';
part 'get_listing_for_sale_cubit.freezed.dart';

class ListingProfileCubit extends Cubit<ListingCubitState> {
  final IListingService listingService;
  ListingProfileCubit(this.listingService)
      : super(const ListingCubitState.initial());
  List<dynamic> tempFiles = [];

  Future<void> loadResults() async {
    emit(
      const _Initial(),
    );
    try {
      ListingForSaleProfileResponseModel response =
          await listingService.getListingForSale();

      emit(LoadedListingsState(listForSale: [response]));
    } catch (error) {
      emit(
        ErrorListingState(HandlingErrors().getError(error)),
      );
    }
  }

  Future<void> updateListing(
      ListingForSaleModel model, List<File> imgList) async {
    try {
      ListingForSaleModel response = await listingService.updateListing(model);

      for (var i = 0; i < imgList.length; i++) {
        await listingService.uploadListingImage(
            await File(imgList[i].path).readAsBytes(),
            response.productItemId ?? '');
      }
      getIt<ListingProfileCubit>().loadResults();
    } on Exception catch (e) {
      print(e);
    }
  }
}
