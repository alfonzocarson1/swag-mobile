import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/models/sold/product_item_sold.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/sold/i_sold_service.dart';

part 'sold_bloc.freezed.dart';
part 'sold_event.dart';
part 'sold_state.dart';

class SoldBloc extends Bloc<SoldEvent, SoldState> {
  final ISoldService soldService;

  SoldBloc(this.soldService) : super(SoldState.initial()) {
    add(const SoldEvent.getSoldItem());
  }

  Stream<SoldState> get authStateStream async* {
    yield state;
    yield* stream;
  }

  @override
  Stream<SoldState> mapEventToState(SoldEvent event) async* {
    yield* event.when(
      getSoldItem: _getSoldItems,
    );
  }

  Stream<SoldState> _getSoldItems() async* {
    yield SoldState.initial();
    try {
      final response = await soldService.getProductItemsSold();
      yield SoldState.loadedSoldItems(dataSoldList: response);
    } catch (e) {
      yield SoldState.error(HandlingErrors().getError(e));
    }
  }
}


// Mock data
const responseBody = {
  "productItemId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "productItemName": "string",
  "productItemPrice": 0,
  "productItemImageUrls": [
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012.png?alt=media&token=47e348c2-35a6-488d-b715-300752b0f52b"
  ],
  "productItemDescription": "string",
  "condition": "string",
  "profileId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "catalogItemId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "profileCollectionItemId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "lastSale": 0,
  "forSale": false,
  "sold": true,
  "isDeleted": true,
  "status": "string",
  "peerToPeerPaymentOptions": {
    "accountProfilePeerToPeerPaymentId": "string",
    "venmoUser": "string",
    "cashTag": "string",
    "payPalEmail": "string"
  },
  "submitPurchaseInfo": {
    "buyerAccountId": "string",
    "userNameBuyer": "string",
    "avatarBuyer": "string",
    "avatarBuyerUrl": "string",
    "address": {
      "addressId": "string",
      "addressType": "SHIPPING",
      "firstName": "string",
      "lastName": "string",
      "country": "string",
      "address1": "string",
      "address2": "string",
      "city": "string",
      "state": "string",
      "postalCode": "string"
    },
    "profilePeerToPeerPayment": {
      "accountProfilePeerToPeerPaymentId": "string",
      "venmoUser": "string",
      "cashTag": "string",
      "payPalEmail": "string"
    }
  }
};
