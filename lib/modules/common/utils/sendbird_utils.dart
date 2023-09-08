import 'dart:convert';

import 'package:sendbird_chat_sdk/sendbird_chat_sdk.dart';
import 'package:swagapp/generated/intl/messages_en.dart';
import 'package:swagapp/modules/common/utils/utils.dart';

import '../../../generated/l10n.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../enums/chat_message_data_type.dart';
import '../../enums/chat_type.dart';
import '../../models/chat/message_data.dart';
import '../../models/profile/profile_model.dart';

abstract class SendBirdUtils {
  static Map<String, dynamic> getFormatedData(String data) {
    if (data.isEmpty) {
      return {};
    } else {
      String stringData =
          json.encode(data.replaceAll("'", '"').replaceAll('None', 'null'));
      String formatedData = stringData.replaceAll('\\', "");
      Map<String, dynamic> mapedData =
          json.decode(formatedData.substring(1, formatedData.length - 1));
      return mapedData;
    }
  }

  static String getPaymentMehotd(PaymentMethod paymentMethod) {
    return (paymentMethod.payPalEmail.isEmpty)
        ? (paymentMethod.venmoUser.isEmpty)
            ? (paymentMethod.cashTag.isEmpty)
                ? ''
                : S.current.paymetCashApp
            : S.current.paymetVenmo
        : S.current.paymetPaypal;
  }

  static String getPaymentMehotdUser(PaymentMethod paymentMethod) {
    return (paymentMethod.payPalEmail.isEmpty)
        ? (paymentMethod.venmoUser.isEmpty)
            ? (paymentMethod.cashTag.isEmpty)
                ? ''
                : paymentMethod.cashTag
            : paymentMethod.venmoUser
        : paymentMethod.payPalEmail;
  }

  static String getMessageText(MessageData messageData) {
    ProfileModel profileData =
        getIt<PreferenceRepositoryService>().profileData();

    if (messageData.type == ChatMessageDataType.adminRequested.textValue) {
      return S.current.chatSwagAdminRequested;
    } else if (messageData.type != ChatMessageDataType.message.textValue &&
        messageData.type != ChatMessageDataType.paymentReceived.textValue &&
        messageData.type != ChatMessageDataType.shipped.textValue &&
        messageData.type != ChatMessageDataType.confirmShip.textValue &&
        messageData.type != ChatMessageDataType.saleCanceled.textValue &&
        messageData.type != ChatMessageDataType.paymentSend.textValue &&
        messageData.type != ChatMessageDataType.itemNotReceived.textValue) {
      return (profileData.username == messageData.payload.userNameSeller)
          ? S.current.chatCardConfirmPaymentSeller(
              messageData.payload.userNameBuyer,
              messageData.payload.userNameSeller,
              getPaymentMehotd(messageData.payload.paymentMethodOption),
              decimalDigitsLastSalePrice(
                  messageData.payload.listingPrice.toString()),
              getPaymentMehotdUser(messageData.payload.paymentMethodOption))
          : S.current.chatCardConfirmPaymentBuyer(
              messageData.payload.userNameBuyer,
              messageData.payload.userNameSeller,
              getPaymentMehotd(messageData.payload.paymentMethodOption),
              decimalDigitsLastSalePrice(
                  messageData.payload.listingPrice.toString()),
              getPaymentMehotdUser(messageData.payload.paymentMethodOption));
    } else if (messageData.type ==
        ChatMessageDataType.paymentReceived.textValue) {
      return S.current
          .chatConfirmPaymentMessage(messageData.payload.userNameSeller);
    } else if (messageData.type == ChatMessageDataType.confirmShip.textValue) {
      return S.current.chatConfirmShipMessage(
          messageData.payload.userNameSeller,
          messageData.payload.nameBuyer ?? '',
          messageData.payload.lastNameBuyer ?? '',
          messageData.payload.address.address1,
          messageData.payload.address.address2,
          messageData.payload.address.city,
          messageData.payload.address.state,
          messageData.payload.address.postalCode,
          messageData.payload.address.country ?? '');
    } else if (messageData.type == ChatMessageDataType.shipped.textValue) {
      if (messageData.payload.trackingNumber.isEmpty) {
        return S.current.chatShippedMessageWithoutTrackingNumber(
            messageData.payload.userNameSeller);
      } else {
        return S.current.chatShippedMessage(
          messageData.payload.userNameSeller,
          messageData.payload.trackingNumber,
        );
      }
    } else if (messageData.type == ChatMessageDataType.saleCanceled.textValue) {
      return S.current.chatCancelPurchaseMessage;
    } else if (messageData.type == ChatMessageDataType.paymentSend.textValue) {
      return S.current.chatPaymentSendBuyer(messageData.payload.userNameBuyer);
    } else if (messageData.type ==
        ChatMessageDataType.itemNotReceived.textValue) {
      return S.current.notDeliveredItemChatMessage(
          messageData.payload.userNameBuyer,
          messageData.payload.userNameSeller);
    } else {
      return S.current.chatCommenceMessage;
    }
  }

  static String getChatCardButtonText(MessageData messageData) {
    if (messageData.type == ChatMessageDataType.confirmPaidSend.textValue) {
      return S.current.chatCardButtonPaymentSent;
    } else if (messageData.type ==
        ChatMessageDataType.confirmPaymentReceived.textValue) {
      return S.current.chatCardButtonPaymentReceived;
    } else if (messageData.type == ChatMessageDataType.confirmShip.textValue) {
      return S.current.chatCardButtonShipmentSent;
    } else {
      return '';
    }
  }

  static String getListingChatUrl(List<GroupChannel> channels,
      String proudctItemId, String listingImageUrl) {
    String listingUrl = "";

    for (int i = 0; i < channels.length; i++) {
      if (channels[i].data.isNotEmpty) {
        String jsonString = channels[i].data;
        jsonString = jsonString.replaceAll("'", '"');
        Map<String, dynamic> json = jsonDecode(jsonString);
        String jsonProductItemId = json['productItemId'];
        String jsonListingImageUrl = json['listingImageUrl'];

        if (proudctItemId == jsonProductItemId &&
            listingImageUrl == jsonListingImageUrl) {
          listingUrl = channels[i].channelUrl;
          break;
        } else if (proudctItemId == jsonProductItemId &&
            listingImageUrl == jsonListingImageUrl) {
          listingUrl = channels[i].channelUrl;
          break;
        }
      }
    }
    return listingUrl;
  }

  static String getListingChatUrlInProfile(
      List<GroupChannel> channels, String proudctItemId) {
    String listingUrl = "";

    for (int i = 0; i < channels.length; i++) {
      if (channels[i].data.isNotEmpty) {
        String jsonString = channels[i].data;
        jsonString = jsonString.replaceAll("'", '"');
        Map<String, dynamic> json = jsonDecode(jsonString);
        String jsonProductItemId = json['productItemId'];

        if (proudctItemId == jsonProductItemId) {
          listingUrl = channels[i].channelUrl;
          break;
        }
      }
    }
    return listingUrl;
  }

  static String getCardTitle(MessageData messageData) {
    if (messageData.type == ChatMessageDataType.confirmPaidSend.textValue) {
      return S.current.chatCardPaymetInformation;
    } else if (messageData.type ==
        ChatMessageDataType.confirmPaymentReceived.textValue) {
      return S.current.chatCardPaymetConfirmation;
    } else if (messageData.type == ChatMessageDataType.confirmShip.textValue) {
      return S.current.chatCardShippingInformation;
    } else if (messageData.type ==
        ChatMessageDataType.adminRequested.textValue) {
      return S.current.chatCardSwagAdminAdded;
    } else {
      return '';
    }
  }
}
