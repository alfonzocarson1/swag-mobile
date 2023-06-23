import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/utils/utils.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/models/chat/chat_data.dart';
import 'package:swagapp/modules/models/chat/message_data.dart';
import 'package:swagapp/modules/enums/chat_message_data_type.dart';

class ChatCardMessage extends StatelessWidget {

  final MessageData messageData;
  final ChatData chatData;

  const ChatCardMessage({
    super.key, 
    required this.messageData, 
    required this.chatData,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>
        [
          _CardTopBar(sender: S.current.chatSwagg),
          const SizedBox(height: 5),          
          _CardContent(
            messageData: this.messageData,
            chatData: this.chatData,
          ),
          const SizedBox(height: 5),
        ],
      ),
    );

  }
}

class _CardContent extends StatelessWidget {

  final ChatData chatData;
  final MessageData messageData;

  const _CardContent({
    super.key, 
    required this.messageData, required this.chatData,
  });

  @override
  Widget build(BuildContext context) {

    String contentText = this.getContentText();
    String buttonText = this.getButtonText();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Palette.current.greyMessageCard,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>
        [
          _CardTitle(title: S.current.chatCardPaymetInformation),
          const SizedBox(height: 5),
          Text(
            contentText,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 10),
          _CardButton(
            text: buttonText,
            onTap: ()=> this.onTapButton(),
          ),
        ],
      ),
    );
  }

  String getContentText() {

    if(this.messageData.type == ChatMessageDataType.confirmPaidSend.textValue) {

      return S.current.chatCardConfirmPaymentBuyer(
        this.messageData.payload.userNameBuyer,
        this.messageData.payload.userNameSeller,
        this.getPaymentMehotd(this.messageData.payload.paymentMethod),
        decimalDigitsLastSalePrice(this.messageData.payload.listingPrice.toString()),
        this.getPaymentMehotdUser(this.messageData.payload.paymentMethod)
      );
    }

    return '';
  }

  String getPaymentMehotd(PaymentMethod paymentMethod) {

    return (paymentMethod.payPalEmail.isEmpty) 
    ? (paymentMethod.venmoUser.isEmpty)
      ? (paymentMethod.cashTag.isEmpty) 
        ? ''
        : S.current.paymetCashApp
      : S.current.paymetVenmo
    : S.current.paymetPaypal;
  }

  String getPaymentMehotdUser(PaymentMethod paymentMethod) {

    return (paymentMethod.payPalEmail.isEmpty) 
    ? (paymentMethod.venmoUser.isEmpty)
      ? (paymentMethod.cashTag.isEmpty) 
        ? ''
        : paymentMethod.cashTag
      : paymentMethod.venmoUser
    : paymentMethod.payPalEmail;
  }
  
  String getButtonText() {

    if(this.messageData.type == ChatMessageDataType.confirmPaidSend.textValue) {

      return S.current.chatCardButtonPaymentSent;
    }
    else if(this.messageData.type == ChatMessageDataType.confirmPaymentReceived.textValue) {

      return S.current.chatCardButtonPaymentReceived;
    }
    else if(this.messageData.type == ChatMessageDataType.confirmShip.textValue) {

      return S.current.chatCardButtonShipmentSent;
    }
    else return '';
  }

  void onTapButton() {

    if(this.messageData.type == ChatMessageDataType.confirmPaidSend.textValue) {


    }
    else if(this.messageData.type == ChatMessageDataType.confirmPaymentReceived.textValue) {}
    else if(this.messageData.type == ChatMessageDataType.confirmShip.textValue) {}
  }
}

class _CardTitle extends StatelessWidget {

  final String title;

  const _CardTitle({
    super.key, 
    required this.title,
  });

  @override
  Widget build(BuildContext context) {

    return Text(
      this.title,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
        fontSize: 18,
        color: Palette.current.white,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}


class _CardTopBar extends StatelessWidget {
  
  final String sender;

  const _CardTopBar({
    super.key, 
    required this.sender,
  });

  @override
  Widget build(BuildContext context) {

    DateTime createdAt = DateTime.now();
    DateFormat dateFormat = DateFormat().add_jm();
    String createdAtFormated = dateFormat.format(createdAt);

    return Row(
      children: <Widget>
      [
        Text(
          this.sender,
          style: TextStyle(
            fontSize: 14,              
            fontWeight: FontWeight.lerp(FontWeight.w300, FontWeight.w400, 0.5),
            color: Palette.current.grey,
          ),
        ),
        const Spacer(),
        Text(
          createdAtFormated,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: Palette.current.gray7,
          ),
        ),
      ],
    );
  }
}

class _CardButton extends StatelessWidget {

  final String text;
  final Function() onTap;

  const _CardButton({
    super.key, 
    required this.text, 
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Palette.current.greyMessage,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Text(
          this.text,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontSize: 16,
            color: Palette.current.purple,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}