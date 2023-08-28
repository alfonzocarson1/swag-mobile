import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/ui/loading.dart';
import '../../common/utils/context_service.dart';
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

  Future<ListingForSaleProfileResponseModel?> loadCollectionListed() async {
    try {
      ListingForSaleProfileResponseModel response =
          await listingService.getListingForSale();

      return response;
    } catch (error) {
      return null;
    }
  }

  Future<void> updateListing(ListingForSaleModel model, List<File> imgList,
      List<String> imageUrls) async {
    try {
      BuildContext context =
          getIt<ContextService>().rootNavigatorKey.currentContext!;
      Loading.show(context);
      ListingForSaleModel response = await listingService.updateListing(model);

      for (var i = 0; i < imgList.length; i++) {
        await listingService.uploadListingImage(
            await File(imgList[i].path).readAsBytes(),
            response.productItemId ?? '');
      }
      await listingService.updateImages(imageUrls);
      _cleanupTemporaryFiles(imgList);
      getIt<ListingProfileCubit>().loadResults();
      getIt<ContextService>().rootNavigatorKey.currentState!.pop();
      getIt<ContextService>().rootNavigatorKey.currentState!.pop();
      getIt<ContextService>().rootNavigatorKey.currentState!.pop();
      Loading.hide(context);
    } on Exception catch (e) {
      print(e);
    }
  }

  Future<void> removeListingItem(ListingForSaleModel model) async {
    try {
      await listingService.removeListingItem(model);
      getIt<ListingProfileCubit>().loadResults();
    } on Exception catch (e) {
      print(e);
    }
  }

  Future _cleanupTemporaryFiles(List<File> tempFiles) async {
    // If you have stored the temporary files in a list, iterate through the list and delete each file.
    for (File file in tempFiles) {
      try {
        await file.delete();
        log("temporary file $file deleted");
      } catch (e) {
        log("Error deleting file: $e");
      }
    }
  }
}
