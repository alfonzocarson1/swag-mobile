import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mailer/flutter_mailer.dart';

import '../../../generated/l10n.dart';

class SendMailContact {
  static Future<void> send({
    required BuildContext context,
    required String subject,
    String body = '',
  }) async {
    if (Platform.isIOS) {
      final bool canSend = await FlutterMailer.canSendMail();
      if (!canSend) {
        final SnackBar snackBar =
            SnackBar(content: Text(S.of(context).no_email_app_available));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        return;
      }
    }

    final MailOptions mailOptions = MailOptions(
      body: body,
      subject: subject,
      recipients: <String>['app@swag.golf'],
    );

    String platformResponse;

    try {
      final MailerResponse response = await FlutterMailer.send(mailOptions);
      switch (response) {
        case MailerResponse.saved:
          platformResponse = S.of(context).mail_was_saved_to_draft;
          break;
        case MailerResponse.sent:
          platformResponse = S.of(context).mail_was_sent;
          break;
        case MailerResponse.cancelled:
          platformResponse = S.of(context).mail_was_cancelled;
          break;
        default:
          platformResponse = '';
          break;
      }
    } on PlatformException catch (error) {
      platformResponse = error.toString();
      log(error.toString());

      await showDialog<void>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                S.of(context).message,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(error.message ?? 'Unknown error'),
            ],
          ),
          contentPadding: const EdgeInsets.all(26),
          title: Text(error.code),
        ),
      );
    } catch (error) {
      platformResponse = error.toString();
    }
    if (platformResponse.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(platformResponse),
      ));
    }
  }
}
