// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "app_name": MessageLookupByLibrary.simpleMessage("Swag Golf"),
        "code": MessageLookupByLibrary.simpleMessage("Code"),
        "confirm_password":
            MessageLookupByLibrary.simpleMessage("Confirm Password"),
        "create_account":
            MessageLookupByLibrary.simpleMessage("CREATE ACCOUNT"),
        "dont_have_account": MessageLookupByLibrary.simpleMessage(
            "Don’t have an account? *Create Account*"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "explore_as_guest":
            MessageLookupByLibrary.simpleMessage("EXPLORE AS GUEST"),
        "finish_btn": MessageLookupByLibrary.simpleMessage("FINISH"),
        "forgot_password":
            MessageLookupByLibrary.simpleMessage("Forgot Password?"),

        "forgot_password_code_description":
            MessageLookupByLibrary.simpleMessage(
                "Please check your email and enter your six digit code below."),
        "forgot_password_email_description":
            MessageLookupByLibrary.simpleMessage(
                "Enter your email to reset your password."),

        "incorrect_email_or_password": MessageLookupByLibrary.simpleMessage(
            "Incorrect email or password. Please try again"),
        "invalid_email":
            MessageLookupByLibrary.simpleMessage("Invalid email address"),
        "invalid_password": MessageLookupByLibrary.simpleMessage(
            "Password doesn’t meet requirements. Min. 8 characters, 1 uppercase, 1 number & 1 symbol"),
        "new_password": MessageLookupByLibrary.simpleMessage("New Password"),
        "no_match_password":
            MessageLookupByLibrary.simpleMessage("Password doesn’t match"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "popup_btn_no":
            MessageLookupByLibrary.simpleMessage("NO, I\'LL DO THIS LATER"),
        "popup_btn_yes":
            MessageLookupByLibrary.simpleMessage("YES, IMPORT MY INFO"),
        "popup_description": MessageLookupByLibrary.simpleMessage(
            "It looks like you have an account on swag.golf. Would you like to import your transaction history? You will be able to customize this later."),
        "popup_title": MessageLookupByLibrary.simpleMessage("WELCOME @MRDOUG"),
        "resend_email": MessageLookupByLibrary.simpleMessage(
            "Didn’t get an email? *Resend Email*"),
        "reset_password_btn":
            MessageLookupByLibrary.simpleMessage("RESET PASSWORD"),
        "reset_password_description": MessageLookupByLibrary.simpleMessage(
            "Please enter and confirm your new password below."),
        "sign_in": MessageLookupByLibrary.simpleMessage("SIGN IN")
      };
}
