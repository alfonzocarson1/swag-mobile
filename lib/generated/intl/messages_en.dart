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

  static String m0(userName, listingName) =>
      "@${userName} has agreed to purchase your ${listingName}";

  static String m1(userName) => "@${userName} will paying using ";

  static String m2(
          sellerUserName, myUserName, paymnetMethod, rate, paymentUser) =>
      "@${sellerUserName} here is @${myUserName}\'s ${paymnetMethod}\'s information to send payment - ${rate} \n\n${paymentUser}\n\nOnce payment is made please click the confirmation button below";

  static String m3(
          sellerUserName, myUserName, paymnetMethod, rate, paymentUser) =>
      "@${sellerUserName} here is @${myUserName}\'s ${paymnetMethod}\'s information to send payment - ${rate} \n\n${paymentUser}";

  static String m4(buyerUserName, paymnetMethod) =>
      "@${buyerUserName} indicated he made payment. Please check your ${paymnetMethod} account and click the button below to confirm payment was received";

  static String m5(sellerUserName) =>
      "@${sellerUserName} has confirmed that payment has been received";

  static String m6(sellerUserName, buyerName, buyerLastName, address, address2,
          city, state, zipCode, country) =>
      "@${sellerUserName} here is the shipping address to ship this item\n\n${buyerName} ${buyerLastName}\n${address}, ${address2} \n${city}, ${state}, ${zipCode}, ${country}";

  static String m7(userName) => "@${userName} has started a chat";

  static String m8(sender) => "New message from ${sender}";

  static String m9(buyerUserName) =>
      "Payment Confirmation @${buyerUserName} indicated they made payment";

  static String m10(sellerUserName, trackingNumber) =>
      "@${sellerUserName} has shipped the item. Here is the tracking number\n\n${trackingNumber}";

  static String m11(sellerUserName) =>
      "@${sellerUserName} has shipped the item.";

  static String m12(chatsNumber) => "${chatsNumber} Unread";

  static String m13(itemName, userName) =>
      "It’s been 7 days since you purchased the ${itemName} from @${userName}. We want to know if you received your item yet?";

  static String m14(number) => "${number} Items";

  static String m15(buyerUserName, sellerUserName) =>
      "${buyerUserName} has still not received this item. ${sellerUserName} can you please provide an update on shipping? Thank you.";

  static String m16(permission) => "ALLOW ${permission} ACCESS";

  static String m17(os, permission) =>
      "Please allow ${permission} permission in your ${Intl.select(os, {
            'android': 'phone',
            'ios': 'iPhone',
            'other': 'device',
          })} settings for the Swag App";

  static String m18(permission) => "${permission} ACCESS";

  static String m19(orderNumber) => "Order number: ${orderNumber}";

  static String m20(totalPrice) => "TOTAL=\$${totalPrice}";

  static String m21(paymentMethod) => "Paid via ${paymentMethod}";

  static String m22(trackingNumber) => "Tracking number:\n${trackingNumber}";

  static String m23(sellerUserName) =>
      "How was your experience \nwith ${sellerUserName}?";

  static String m24(buyerUserName, dateSold) =>
      "Sold to @${buyerUserName} on ${dateSold} ";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "See_All": MessageLookupByLibrary.simpleMessage("See All"),
        "a_to_z": MessageLookupByLibrary.simpleMessage("A to Z"),
        "accepted_payment_types":
            MessageLookupByLibrary.simpleMessage("Accepted Payment Types"),
        "access_photos": MessageLookupByLibrary.simpleMessage("CHOOSE PHOTO"),
        "accessories": MessageLookupByLibrary.simpleMessage("Accesories"),
        "account_sub_title":
            MessageLookupByLibrary.simpleMessage("Billing, shipping, payment"),
        "account_title": MessageLookupByLibrary.simpleMessage("Account"),
        "acquired": MessageLookupByLibrary.simpleMessage("Acquired:"),
        "active": MessageLookupByLibrary.simpleMessage("Active"),
        "add_address_title": MessageLookupByLibrary.simpleMessage(
            "Please enter and confirm your shipping information."),
        "add_collection":
            MessageLookupByLibrary.simpleMessage("ADD TO COLLECTION"),
        "add_collection_title":
            MessageLookupByLibrary.simpleMessage("ADD TO YOUR COLLECTION"),
        "add_multi_collection_btn":
            MessageLookupByLibrary.simpleMessage("ADD ANOTHER"),
        "add_new_address":
            MessageLookupByLibrary.simpleMessage("Add New Address"),
        "add_new_item": MessageLookupByLibrary.simpleMessage("ADD NEW ITEM"),
        "add_photos": MessageLookupByLibrary.simpleMessage("ADD PHOTOS"),
        "add_to_wall_collection_subtitle": MessageLookupByLibrary.simpleMessage(
            "Select the type of product you would like to add to your collection."),
        "add_to_wall_collection_title":
            MessageLookupByLibrary.simpleMessage("ADD TO YOUR COLLECTION"),
        "aditional_listing_detail": MessageLookupByLibrary.simpleMessage(
            "Additional listing details..."),
        "agree_to": MessageLookupByLibrary.simpleMessage("I agree to Swag’s "),
        "alert_center_title":
            MessageLookupByLibrary.simpleMessage("ALERTS & NOTIFICATIONS"),
        "alert_remove_btn": MessageLookupByLibrary.simpleMessage("REMOVE ITEM"),
        "alert_remove_subtitle": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to remove this item from you collection? This item is also listed for sale. Removing the item from your collection will also remove the listing."),
        "already_have_an_account":
            MessageLookupByLibrary.simpleMessage("Already have an account? "),
        "and": MessageLookupByLibrary.simpleMessage(" \n& "),
        "app_name": MessageLookupByLibrary.simpleMessage("Swag Golf"),
        "available": MessageLookupByLibrary.simpleMessage("Available:"),
        "b111_222": MessageLookupByLibrary.simpleMessage("\$111 - \$222"),
        "b222_555": MessageLookupByLibrary.simpleMessage("\$222 - \$555"),
        "b555_above": MessageLookupByLibrary.simpleMessage("\$555 - Above"),
        "billing_address":
            MessageLookupByLibrary.simpleMessage("Billing Address"),
        "blocked_title":
            MessageLookupByLibrary.simpleMessage("Blocked Accounts"),
        "buy_for": MessageLookupByLibrary.simpleMessage("BUY FOR"),
        "camera": MessageLookupByLibrary.simpleMessage("TAKE PHOTO"),
        "cancel": MessageLookupByLibrary.simpleMessage("CANCEL"),
        "cancel_sale": MessageLookupByLibrary.simpleMessage("CANCEL SALE"),
        "cancel_sale_btn": MessageLookupByLibrary.simpleMessage("CANCEL SALE"),
        "cancel_sale_description": MessageLookupByLibrary.simpleMessage(
            "Please select the reason you are canceling this sale."),
        "card": MessageLookupByLibrary.simpleMessage("Card"),
        "card_description": MessageLookupByLibrary.simpleMessage(
            "This card will only be used for Atomic Drop purchases. All secondary market purchases will use P2P payment options."),
        "cash_app": MessageLookupByLibrary.simpleMessage("CashApp"),
        "cash_app_sub_title": MessageLookupByLibrary.simpleMessage(
            "Please enter and confirm your \nCashApp cashtag"),
        "category": MessageLookupByLibrary.simpleMessage("category"),
        "chatAddSwagAdmin":
            MessageLookupByLibrary.simpleMessage("Add Swag Admin"),
        "chatAddSwagAdminButton":
            MessageLookupByLibrary.simpleMessage("Add Swag Member"),
        "chatAddSwagAdminContent": MessageLookupByLibrary.simpleMessage(
            "Are you sure you would like to add a swag member to the chat? The admin will be able to see the complete chat history to help settle any disputes. "),
        "chatBannerItemSold": MessageLookupByLibrary.simpleMessage("Item sold"),
        "chatBannerTitle": m0,
        "chatBannerWillPay": m1,
        "chatCancelPurchaseMessage": MessageLookupByLibrary.simpleMessage(
            "The seller has chosen to \ncanceled this transaction."),
        "chatCardButtonPaymentReceived":
            MessageLookupByLibrary.simpleMessage("Payment Received"),
        "chatCardButtonPaymentSent":
            MessageLookupByLibrary.simpleMessage("Payment Sent"),
        "chatCardButtonShipmentSent":
            MessageLookupByLibrary.simpleMessage("Shipment Sent"),
        "chatCardConfirmPaymentBuyer": m2,
        "chatCardConfirmPaymentSeller": m3,
        "chatCardPaymentReceivedSeller": m4,
        "chatCardPaymetConfirmation":
            MessageLookupByLibrary.simpleMessage("Payment Confirmation"),
        "chatCardPaymetInformation":
            MessageLookupByLibrary.simpleMessage("Payment Information"),
        "chatCardShippingInformation":
            MessageLookupByLibrary.simpleMessage("Shipping Information"),
        "chatCardShippingInformationInputHint":
            MessageLookupByLibrary.simpleMessage("Add tracking number here"),
        "chatChat": MessageLookupByLibrary.simpleMessage("Chat"),
        "chatCommenceMessage": MessageLookupByLibrary.simpleMessage(
            "You can use this chat to adjust any information necessary to complete the sale. If you need 3rd party assistance click the icon above and request an admin to join the chat. NOTE: If payment is not received in 12 hours the listings can be cancelled "),
        "chatConfirmPaymentMessage": m5,
        "chatConfirmShipMessage": m6,
        "chatErrorFile":
            MessageLookupByLibrary.simpleMessage("Error loading the file"),
        "chatInputHintText":
            MessageLookupByLibrary.simpleMessage("Enter message"),
        "chatListingBannerTitle": m7,
        "chatLoadingFile":
            MessageLookupByLibrary.simpleMessage("Loading File..."),
        "chatMessageFrom": m8,
        "chatModeratorName": MessageLookupByLibrary.simpleMessage("SWAG"),
        "chatNoMessages":
            MessageLookupByLibrary.simpleMessage("No previous messages"),
        "chatPaymentSendBuyer": m9,
        "chatShippedMessage": m10,
        "chatShippedMessageWithoutTrackingNumber": m11,
        "chatSwagg": MessageLookupByLibrary.simpleMessage("SWAG"),
        "chatSwaggAdmin": MessageLookupByLibrary.simpleMessage("Swag Admin"),
        "chatToday": MessageLookupByLibrary.simpleMessage("Today"),
        "chatTyping": MessageLookupByLibrary.simpleMessage("Typing..."),
        "chatsHeader": MessageLookupByLibrary.simpleMessage("Chat"),
        "chatsUnreadMessages": m12,
        "city": MessageLookupByLibrary.simpleMessage("City"),
        "clear_all": MessageLookupByLibrary.simpleMessage("Clear All"),
        "code": MessageLookupByLibrary.simpleMessage("Code"),
        "code_expired": MessageLookupByLibrary.simpleMessage(
            "Code expired. Please select resend to receive new code."),
        "code_not_entered_message":
            MessageLookupByLibrary.simpleMessage("Please enter code."),
        "collection": MessageLookupByLibrary.simpleMessage("Collection"),
        "collection_listed": MessageLookupByLibrary.simpleMessage(
            "Collection item(s) already listed"),
        "collection_message": MessageLookupByLibrary.simpleMessage(
            "This cover is not in your collection, buy it now before it’s too late"),
        "collection_value":
            MessageLookupByLibrary.simpleMessage("ESTIMATED COLLECTION VALUE:"),
        "collections": MessageLookupByLibrary.simpleMessage("collections"),
        "communications_sub_title": MessageLookupByLibrary.simpleMessage(
            "Manage notifications and blocking"),
        "communications_title":
            MessageLookupByLibrary.simpleMessage("Communications"),
        "complete_purchase_sub_title": MessageLookupByLibrary.simpleMessage(
            "We will connect you with the seller to complete this purchase. Please select how you like to pay for this item? "),
        "complete_purchase_title":
            MessageLookupByLibrary.simpleMessage("Complete Purchase"),
        "complete_sale_btn":
            MessageLookupByLibrary.simpleMessage("COMPLETE SALE"),
        "condition": MessageLookupByLibrary.simpleMessage("Condition"),
        "confirm_password":
            MessageLookupByLibrary.simpleMessage("Confirm Password"),
        "contact_us": MessageLookupByLibrary.simpleMessage("Contact us"),
        "contact_us_sub_title": MessageLookupByLibrary.simpleMessage(
            "Get in touch with Swag support"),
        "contact_us_title": MessageLookupByLibrary.simpleMessage("Contact Us"),
        "country": MessageLookupByLibrary.simpleMessage("Country"),
        "create_account":
            MessageLookupByLibrary.simpleMessage("Create Account"),
        "creditcard_and_billing_info": MessageLookupByLibrary.simpleMessage(
            "Credit card and Billing information.\n"),
        "cvc": MessageLookupByLibrary.simpleMessage("CVC"),
        "date_purchased":
            MessageLookupByLibrary.simpleMessage("Date Purchased"),
        "delete": MessageLookupByLibrary.simpleMessage("DELETE"),
        "delete_collection_razon_1":
            MessageLookupByLibrary.simpleMessage("Item was sold elsewhere"),
        "delete_collection_razon_2":
            MessageLookupByLibrary.simpleMessage("Item was gifted"),
        "delete_collection_razon_3":
            MessageLookupByLibrary.simpleMessage("Other"),
        "delete_collection_reason_4":
            MessageLookupByLibrary.simpleMessage("Changed my mind"),
        "delete_photo": MessageLookupByLibrary.simpleMessage("DELETE PHOTO"),
        "delete_photo_descrption": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete this photo?"),
        "delivered_not_yes": MessageLookupByLibrary.simpleMessage("NOT YET"),
        "delivered_not_yet_alert": MessageLookupByLibrary.simpleMessage(
            "Sorry you’re still waiting! We will \ncheck back with you in a few days."),
        "delivered_sub_title": m13,
        "delivered_title":
            MessageLookupByLibrary.simpleMessage("Did you get it?"),
        "delivered_yes": MessageLookupByLibrary.simpleMessage("YES"),
        "detail": MessageLookupByLibrary.simpleMessage("DETAILS"),
        "didnt_get_email":
            MessageLookupByLibrary.simpleMessage("Didn’t get an email? "),
        "displayed": MessageLookupByLibrary.simpleMessage("Displayed"),
        "displayed_gamed":
            MessageLookupByLibrary.simpleMessage("DISPLAYED /GAMED:"),
        "displayed_gamed_item_four": MessageLookupByLibrary.simpleMessage(
            "•  Minimum of 4, Maximum of 6"),
        "displayed_gamed_item_three":
            MessageLookupByLibrary.simpleMessage("•  Bottom of item"),
        "dont_have_account":
            MessageLookupByLibrary.simpleMessage("Don’t have an account? "),
        "edit_address": MessageLookupByLibrary.simpleMessage("Edit Address"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "email_taken": MessageLookupByLibrary.simpleMessage(
            "An account is already associated with this email"),
        "email_verified": MessageLookupByLibrary.simpleMessage("Verified"),
        "empty_collection": MessageLookupByLibrary.simpleMessage(
            "TAP THE “+” ICON ON ANY ITEM TO ADD TO YOUR COLLECTION"),
        "empty_favorite": MessageLookupByLibrary.simpleMessage(
            "TAP THE SKULL ICON NEXT TO ANY ITEM TO SAVE TO YOUR FAVORITES."),
        "empty_listing": MessageLookupByLibrary.simpleMessage(
            "YOU DON’T HAVE ANY LISTINGS. ALL YOUR LISTINGS WILL APPEAR HERE."),
        "empty_password":
            MessageLookupByLibrary.simpleMessage("Invalid password"),
        "empty_search_result":
            MessageLookupByLibrary.simpleMessage("NO ITEMS MATCH YOUR SEARCH!"),
        "empty_sold": MessageLookupByLibrary.simpleMessage(
            "YOU HAVEN’T SOLD ANY ITEMS YET. ALL YOUR SOLD ITEMS WILL APPEAR HERE."),
        "empty_text": MessageLookupByLibrary.simpleMessage("No items yet"),
        "existing_item_to_collection_error_btn":
            MessageLookupByLibrary.simpleMessage("YES, ADD ANOTHER"),
        "existing_item_to_collection_error_sub_desc":
            MessageLookupByLibrary.simpleMessage(
                "It looks like you already have this item in your collection. Are you sure you want to add another one?"),
        "existing_item_to_collection_error_title":
            MessageLookupByLibrary.simpleMessage("Are you sure"),
        "expiration": MessageLookupByLibrary.simpleMessage("Expiration"),
        "expired": MessageLookupByLibrary.simpleMessage("Expired"),
        "explore_as_guest":
            MessageLookupByLibrary.simpleMessage("EXPLORE AS GUEST"),
        "field_empty":
            MessageLookupByLibrary.simpleMessage("This field cannot be empty"),
        "filters_title": MessageLookupByLibrary.simpleMessage("filters"),
        "finish_btn": MessageLookupByLibrary.simpleMessage("FINISH"),
        "first_address": MessageLookupByLibrary.simpleMessage(
            "Preferred Shipping Address 1"),
        "first_name": MessageLookupByLibrary.simpleMessage("First Name"),
        "for_sale": MessageLookupByLibrary.simpleMessage("FOR SALE"),
        "forgot_password":
            MessageLookupByLibrary.simpleMessage("Forgot Password?"),
        "forgot_password_code_description":
            MessageLookupByLibrary.simpleMessage(
                "Please check your email and enter your six digit code below."),
        "forgot_password_email_description":
            MessageLookupByLibrary.simpleMessage(
                "Enter your email to reset your password."),
        "from": MessageLookupByLibrary.simpleMessage("FROM"),
        "gamed": MessageLookupByLibrary.simpleMessage("Gamed"),
        "get_an_email":
            MessageLookupByLibrary.simpleMessage("Didn’t get an email?"),
        "headcovers": MessageLookupByLibrary.simpleMessage("Headcovers"),
        "help_center_faq": MessageLookupByLibrary.simpleMessage("FAQs"),
        "help_center_sub_title": MessageLookupByLibrary.simpleMessage(
            "See our FAQS, Terms and Privacy"),
        "help_center_terms_title":
            MessageLookupByLibrary.simpleMessage("Terms and Privacy"),
        "help_center_title":
            MessageLookupByLibrary.simpleMessage("Help Center"),
        "help_payment": MessageLookupByLibrary.simpleMessage(
            "You must select at least one form of payment. You can manage these payment types in your settings."),
        "i_do_not_know":
            MessageLookupByLibrary.simpleMessage("I DON’T KNOW/ NOT LISTED"),
        "image_guidelines":
            MessageLookupByLibrary.simpleMessage("IMAGE GUIDELINES"),
        "image_guidelines_description": MessageLookupByLibrary.simpleMessage(
            "Include the following images with your listing. Photos MUST include a physical note with username and date."),
        "import_late": MessageLookupByLibrary.simpleMessage(
            "*You’ll be able to make updates later."),
        "inactive": MessageLookupByLibrary.simpleMessage("Inactive"),
        "incorrect_code": MessageLookupByLibrary.simpleMessage(
            "Incorrect code. Please check and try again."),
        "incorrect_email_or_password": MessageLookupByLibrary.simpleMessage(
            "Incorrect email or password. Please try again"),
        "info_guideline_popup_badg_one": MessageLookupByLibrary.simpleMessage(
            "• Detailed product description"),
        "info_guideline_popup_badg_three": MessageLookupByLibrary.simpleMessage(
            "• Any relation to someone at Swag?"),
        "info_guideline_popup_badg_two": MessageLookupByLibrary.simpleMessage(
            "• Who you acquired item from"),
        "info_guideline_popup_sub_title": MessageLookupByLibrary.simpleMessage(
            "Please provide as much information as you can about the product and how you acquired it. Be sure to include the following:"),
        "info_guideline_popup_title":
            MessageLookupByLibrary.simpleMessage("INFO GUIDELINES"),
        "input_cash_app": MessageLookupByLibrary.simpleMessage("\$cashtag"),
        "input_cash_app_ivalid": MessageLookupByLibrary.simpleMessage(
            "Must 20 characters or less, min 1 letter, no spaces"),
        "input_venmo": MessageLookupByLibrary.simpleMessage("@Venmo username"),
        "input_venmo_ivalid": MessageLookupByLibrary.simpleMessage(
            "Must be 5-30 characters, no spaces or special characters except - or _"),
        "invadlidEmail": MessageLookupByLibrary.simpleMessage(
            "Incorrect email. Please try again."),
        "invalid_date": MessageLookupByLibrary.simpleMessage("Invalid Date"),
        "invalid_email": MessageLookupByLibrary.simpleMessage(
            "Invalid email address format"),
        "invalid_password": MessageLookupByLibrary.simpleMessage(
            "Password doesn’t meet requirements. Min. 8 characters, 1 uppercase, 1 number & 1 symbol"),
        "invalid_phone_format": MessageLookupByLibrary.simpleMessage(
            "Invalid format please try again."),
        "invalid_username": MessageLookupByLibrary.simpleMessage(
            "Username must be between 4-20 characters"),
        "ist_item_popup_btn":
            MessageLookupByLibrary.simpleMessage("CREATE LISTING"),
        "items_purchased": m14,
        "kyc_title": MessageLookupByLibrary.simpleMessage("KYC"),
        "last_name": MessageLookupByLibrary.simpleMessage("Last Name"),
        "last_sale": MessageLookupByLibrary.simpleMessage("LAST SALE"),
        "less_than": MessageLookupByLibrary.simpleMessage("Less than \$111"),
        "list_for_sale_btn":
            MessageLookupByLibrary.simpleMessage("LIST FOR SALE"),
        "list_item_for_sale":
            MessageLookupByLibrary.simpleMessage("LIST ITEM FOR SALE"),
        "list_item_popup_desc": MessageLookupByLibrary.simpleMessage(
            "Please select the item you would like to list for sale."),
        "list_item_popup_please_select": MessageLookupByLibrary.simpleMessage(
            "Please select an item to list"),
        "list_item_popup_title":
            MessageLookupByLibrary.simpleMessage("LIST ITEM"),
        "list_price_input": MessageLookupByLibrary.simpleMessage("List Price"),
        "mail_was_cancelled":
            MessageLookupByLibrary.simpleMessage("Mail was cancelled"),
        "mail_was_saved_to_draft":
            MessageLookupByLibrary.simpleMessage("Mail was saved to draft"),
        "mail_was_sent": MessageLookupByLibrary.simpleMessage("Mail was sent"),
        "make_an_offer": MessageLookupByLibrary.simpleMessage("MAKE AN OFFER"),
        "message": MessageLookupByLibrary.simpleMessage("Message"),
        "multi_collection_subtitle": MessageLookupByLibrary.simpleMessage(
            "It looks like you already have this item in your collection. Are you sure you want to add another?"),
        "multi_collection_title":
            MessageLookupByLibrary.simpleMessage("WHALE ALERT"),
        "my_collection": MessageLookupByLibrary.simpleMessage("MY COLLECTION"),
        "n_a": MessageLookupByLibrary.simpleMessage("N/A"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "new_password": MessageLookupByLibrary.simpleMessage("New Password"),
        "next_btn": MessageLookupByLibrary.simpleMessage("NEXT"),
        "nft_connect_sheet_button":
            MessageLookupByLibrary.simpleMessage("NEXT"),
        "nft_connect_sheet_subtitle": MessageLookupByLibrary.simpleMessage(
            "Please enter your OpenSea wallet address"),
        "nft_connect_sheet_title":
            MessageLookupByLibrary.simpleMessage("NFT WALLET CONNECT"),
        "nft_dialog_connect_wallet":
            MessageLookupByLibrary.simpleMessage("CONNECT WALLET"),
        "nft_dialog_learn_more":
            MessageLookupByLibrary.simpleMessage("LEARN MORE"),
        "nft_dialog_point1": MessageLookupByLibrary.simpleMessage(
            "Increase odds on hitting drops"),
        "nft_dialog_point2":
            MessageLookupByLibrary.simpleMessage("No signature required"),
        "nft_dialog_point3": MessageLookupByLibrary.simpleMessage(
            "Guaranteed hit on trait drops"),
        "nft_dialog_subtitle": MessageLookupByLibrary.simpleMessage(
            "Connect your wallet to get exclusive offers, access NTF exclusive drops and more..."),
        "nft_dialog_title":
            MessageLookupByLibrary.simpleMessage("OWN A SWAG NFT?"),
        "nft_verify_sheet_button":
            MessageLookupByLibrary.simpleMessage("VERIFY"),
        "nft_verify_sheet_subtitle": MessageLookupByLibrary.simpleMessage(
            "Copy and paste the following code to your OpenSea profile bio."),
        "nft_verify_sheet_subtitle2": MessageLookupByLibrary.simpleMessage(
            "Once the code has been added to your profile bio hit the button below"),
        "nft_verify_sheet_title":
            MessageLookupByLibrary.simpleMessage("VERIFY WALLET"),
        "nft_verify_sheet_verification_failed":
            MessageLookupByLibrary.simpleMessage(
                "Wallet verification failed. Please try again."),
        "nft_wallet_add_wallet":
            MessageLookupByLibrary.simpleMessage("Add New Wallet"),
        "nft_wallet_connect": MessageLookupByLibrary.simpleMessage("Connect"),
        "nft_wallet_page_title":
            MessageLookupByLibrary.simpleMessage("NFT WALLET"),
        "nft_wallet_sub_title":
            MessageLookupByLibrary.simpleMessage("Connect your OpenSea Wallet"),
        "nft_wallet_title": MessageLookupByLibrary.simpleMessage("NFT Wallet"),
        "nft_wallet_wallet": MessageLookupByLibrary.simpleMessage("Wallet"),
        "no_email_app_available":
            MessageLookupByLibrary.simpleMessage("No email app available"),
        "no_match_password":
            MessageLookupByLibrary.simpleMessage("Password doesn’t match"),
        "no_purchase_history_yet":
            MessageLookupByLibrary.simpleMessage("No Purchase History yet"),
        "notDeliveredItemChatMessage": m15,
        "note": MessageLookupByLibrary.simpleMessage("Note"),
        "notification_already_requested": MessageLookupByLibrary.simpleMessage(
            "You have already requested to be notified.  We will notify you when item is listed for sale."),
        "notification_subtitle":
            MessageLookupByLibrary.simpleMessage("Email, text, push"),
        "notifications_title":
            MessageLookupByLibrary.simpleMessage("Notifications"),
        "notify_availability": MessageLookupByLibrary.simpleMessage(
            "You will be notified when this item is available."),
        "notify_available":
            MessageLookupByLibrary.simpleMessage("NOTIFY ME WHEN AVAILABLE"),
        "onboarding_atomic_drops_description": MessageLookupByLibrary.simpleMessage(
            "Atomic Drops are live product drops where you can grab new gear directly from Swag. Don\'t worry, getting cart sniped is more fun on the app anyway."),
        "onboarding_atomic_drops_title":
            MessageLookupByLibrary.simpleMessage("Atomic Drops"),
        "onboarding_discover_description": MessageLookupByLibrary.simpleMessage(
            "Easily search the Swag archive and see what is being sold by other collectors."),
        "onboarding_discover_title":
            MessageLookupByLibrary.simpleMessage("DISCOVER"),
        "onboarding_finish_btn":
            MessageLookupByLibrary.simpleMessage("Let’s Go"),
        "onboarding_kyc_description": MessageLookupByLibrary.simpleMessage(
            "Verify your identity! Verified people have a better change at hitting on Atomic Drops!"),
        "onboarding_kyc_title":
            MessageLookupByLibrary.simpleMessage("Verified Identity"),
        "onboarding_payment_description": MessageLookupByLibrary.simpleMessage(
            "When you purchase items on the secondary market, the Swag App will help facilitate payment using private chat rooms and peer-to-peer payment systems like Venmo, CashApp, and PayPal."),
        "onboarding_payment_title":
            MessageLookupByLibrary.simpleMessage("BUY/Payment"),
        "onboarding_skip_btn": MessageLookupByLibrary.simpleMessage("Skip"),
        "onboarding_swag_description": MessageLookupByLibrary.simpleMessage(
            "Sell Swag items to other collectors by listing items from your collection."),
        "onboarding_swag_title":
            MessageLookupByLibrary.simpleMessage("Sell Your Swag"),
        "onboarding_welcome_description": MessageLookupByLibrary.simpleMessage(
            "Welcome to the Swag App! It\'s your one-stop shop for all things Swag: buy, sell, and participate in drops all from your phone."),
        "onboarding_welcome_title":
            MessageLookupByLibrary.simpleMessage("WELCOME"),
        "paid": MessageLookupByLibrary.simpleMessage("Paid:"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "password_helper": MessageLookupByLibrary.simpleMessage(
            "At least 8 characters, 1 uppercase, 1 number & 1 symbol"),
        "payPal": MessageLookupByLibrary.simpleMessage("PayPal"),
        "payPal_sub_title": MessageLookupByLibrary.simpleMessage(
            "Please enter and confirm your PayPal email"),
        "payment_types": MessageLookupByLibrary.simpleMessage("Payment Type"),
        "payment_types_accepted":
            MessageLookupByLibrary.simpleMessage("Payment Types Accepted"),
        "paymetCashApp": MessageLookupByLibrary.simpleMessage("CashApp"),
        "paymetPaypal": MessageLookupByLibrary.simpleMessage("PayPal"),
        "paymetVenmo": MessageLookupByLibrary.simpleMessage("Venmo"),
        "paywall_condition1":
            MessageLookupByLibrary.simpleMessage("List items for sale"),
        "paywall_condition2": MessageLookupByLibrary.simpleMessage(
            "Increase odds on hitting drops"),
        "paywall_condition3":
            MessageLookupByLibrary.simpleMessage("See product sales history"),
        "paywall_condition4":
            MessageLookupByLibrary.simpleMessage("Track your collection value"),
        "paywall_condition5": MessageLookupByLibrary.simpleMessage(
            "Get notified when items are listed"),
        "paywall_discount": MessageLookupByLibrary.simpleMessage("SAVE 20%"),
        "paywall_free_trial":
            MessageLookupByLibrary.simpleMessage("GET 30 Days free"),
        "paywall_or_price_month":
            MessageLookupByLibrary.simpleMessage("OR \$9.99 per month"),
        "paywall_price_per_month":
            MessageLookupByLibrary.simpleMessage("(\$8.30 per month)"),
        "paywall_price_per_year":
            MessageLookupByLibrary.simpleMessage("\$99.99 per year"),
        "paywall_sign_up_premium":
            MessageLookupByLibrary.simpleMessage("Sign up for Premium"),
        "paywall_splash_condition1":
            MessageLookupByLibrary.simpleMessage("List items for sale"),
        "paywall_splash_condition2": MessageLookupByLibrary.simpleMessage(
            "Increase odds on hitting drops"),
        "paywall_splash_condition3":
            MessageLookupByLibrary.simpleMessage("See product sales history"),
        "paywall_splash_condition4":
            MessageLookupByLibrary.simpleMessage("Track your collection value"),
        "paywall_splash_condition5": MessageLookupByLibrary.simpleMessage(
            "Get notified when items are listed"),
        "paywall_splash_decline":
            MessageLookupByLibrary.simpleMessage("No thanks"),
        "paywall_splash_premium_subtitle":
            MessageLookupByLibrary.simpleMessage("Swag Premium"),
        "paywall_splash_subtitle":
            MessageLookupByLibrary.simpleMessage("BECOME A MEMBER"),
        "paywall_splash_title": MessageLookupByLibrary.simpleMessage("SWAG"),
        "paywall_title": MessageLookupByLibrary.simpleMessage(
            "Upgrade your subscription to see the full sales history plus much more!"),
        "peer_to_peer_payment_options_sub_title":
            MessageLookupByLibrary.simpleMessage("Venmo, CashApp, PayPal"),
        "peer_to_peer_payment_options_title":
            MessageLookupByLibrary.simpleMessage(
                "Peer to Peer Payment Options"),
        "pending_sale_btn":
            MessageLookupByLibrary.simpleMessage("Pending Sale"),
        "permission_camera": MessageLookupByLibrary.simpleMessage("camera"),
        "permission_dialog_button": m16,
        "permission_dialog_description": m17,
        "permission_dialog_title": m18,
        "permission_microphone":
            MessageLookupByLibrary.simpleMessage("microphone"),
        "permission_photos": MessageLookupByLibrary.simpleMessage("photo"),
        "permission_photos_title": MessageLookupByLibrary.simpleMessage(""),
        "phone": MessageLookupByLibrary.simpleMessage("Phone"),
        "phone_taken": MessageLookupByLibrary.simpleMessage(
            "An account is already associated with this phone number"),
        "photo_condition_four": MessageLookupByLibrary.simpleMessage(
            "• Minimum of 4, Maximum of 6"),
        "photo_condition_one": MessageLookupByLibrary.simpleMessage(
            "• The tag on the inside of the headcover"),
        "photo_condition_three":
            MessageLookupByLibrary.simpleMessage("• All sides of the product"),
        "photo_condition_two": MessageLookupByLibrary.simpleMessage(
            "• Hologram in upper corner of packaging"),
        "popup_btn_no":
            MessageLookupByLibrary.simpleMessage("NO, I\'LL DO THIS LATER"),
        "popup_btn_yes": MessageLookupByLibrary.simpleMessage("IMPORT MY INFO"),
        "popup_description": MessageLookupByLibrary.simpleMessage(
            "It looks like you have an account on Swag.Golf. After you verify your email you will be able to  import your information into the Swag app."),
        "popup_title": MessageLookupByLibrary.simpleMessage("WELCOME @"),
        "post_listing_btn":
            MessageLookupByLibrary.simpleMessage("POST LISTING"),
        "premium_member_title":
            MessageLookupByLibrary.simpleMessage("PREMIUM MEMBER"),
        "premium_memberatomic_drop_payments_sub_title":
            MessageLookupByLibrary.simpleMessage("Manage Cards"),
        "premium_memberatomic_drop_payments_title":
            MessageLookupByLibrary.simpleMessage("Atomic Drop Payments"),
        "preview_listing":
            MessageLookupByLibrary.simpleMessage("PREVIEW LISTING"),
        "price": MessageLookupByLibrary.simpleMessage("PRICE"),
        "price_high_to_low":
            MessageLookupByLibrary.simpleMessage("Price: High to Low"),
        "price_low_to_high":
            MessageLookupByLibrary.simpleMessage("Price: Low to High"),
        "price_range": MessageLookupByLibrary.simpleMessage("price range"),
        "price_validations_msj": MessageLookupByLibrary.simpleMessage(
            "cannot enter more than 2 decimal places"),
        "privacy_policy_text":
            MessageLookupByLibrary.simpleMessage("Privacy Policy"),
        "problems_creating_an_account":
            MessageLookupByLibrary.simpleMessage("Problems creating account? "),
        "problems_signing_in":
            MessageLookupByLibrary.simpleMessage("Problems signing in? "),
        "profile_delete_title":
            MessageLookupByLibrary.simpleMessage("Delete Swag Account"),
        "profile_email_title": MessageLookupByLibrary.simpleMessage("Email"),
        "profile_first_name":
            MessageLookupByLibrary.simpleMessage("First name"),
        "profile_last_name": MessageLookupByLibrary.simpleMessage("Last name"),
        "profile_mobile_number_title":
            MessageLookupByLibrary.simpleMessage("Mobile Number"),
        "profile_name": MessageLookupByLibrary.simpleMessage("Name"),
        "profile_name_title": MessageLookupByLibrary.simpleMessage("Name"),
        "profile_password_title":
            MessageLookupByLibrary.simpleMessage("Password"),
        "profile_report_user":
            MessageLookupByLibrary.simpleMessage("Report User"),
        "profile_sub_title": MessageLookupByLibrary.simpleMessage(
            "Username, email, password, phone"),
        "profile_title": MessageLookupByLibrary.simpleMessage("Profile"),
        "profile_username_title":
            MessageLookupByLibrary.simpleMessage("Username"),
        "public_profile_empty_favorites":
            MessageLookupByLibrary.simpleMessage("No favorites yet"),
        "public_profile_empty_listing":
            MessageLookupByLibrary.simpleMessage("No active listings"),
        "purchase_history_detail_title":
            MessageLookupByLibrary.simpleMessage("PURCHASE"),
        "purchase_item_purchased_from":
            MessageLookupByLibrary.simpleMessage("Item purchased from"),
        "purchase_item_shipped":
            MessageLookupByLibrary.simpleMessage("Item shipped"),
        "purchase_order_number": m19,
        "purchase_paid_status": MessageLookupByLibrary.simpleMessage("PAID"),
        "purchase_payment_card_total": m20,
        "purchase_payment_card_via": m21,
        "purchase_pending_shipping":
            MessageLookupByLibrary.simpleMessage("Pending shipping"),
        "purchase_price":
            MessageLookupByLibrary.simpleMessage("Purchase Price"),
        "purchase_ship_to": MessageLookupByLibrary.simpleMessage("Ship to:"),
        "purchase_sub_title":
            MessageLookupByLibrary.simpleMessage("Atomic Drops purchases"),
        "purchase_title":
            MessageLookupByLibrary.simpleMessage("Purchase History"),
        "purchase_total_item": MessageLookupByLibrary.simpleMessage("TOTAL"),
        "purchase_tracking_number": m22,
        "putters": MessageLookupByLibrary.simpleMessage("Putters"),
        "rarity_score": MessageLookupByLibrary.simpleMessage("RARITY SCORE"),
        "rating_btn": MessageLookupByLibrary.simpleMessage("Submit rating"),
        "rating_feedback": MessageLookupByLibrary.simpleMessage(
            "Additional details here \n(not seen by users)..."),
        "rating_sub_title": m23,
        "rating_title": MessageLookupByLibrary.simpleMessage("How’d it go?"),
        "razon_remove_btn": MessageLookupByLibrary.simpleMessage("SUBMIT"),
        "razon_remove_subtitle": MessageLookupByLibrary.simpleMessage(
            "Please select the reason you are removing this item."),
        "reason_required":
            MessageLookupByLibrary.simpleMessage("Reason required"),
        "receive_offer":
            MessageLookupByLibrary.simpleMessage("RECEIVE OFFERS ON THIS ITEM"),
        "recent_searches":
            MessageLookupByLibrary.simpleMessage("RECENT SEARCHES"),
        "release_date": MessageLookupByLibrary.simpleMessage("release date"),
        "release_date_newest":
            MessageLookupByLibrary.simpleMessage("Release Date - Newest"),
        "release_date_oldest":
            MessageLookupByLibrary.simpleMessage("Release Date - Oldest"),
        "released": MessageLookupByLibrary.simpleMessage("Released:"),
        "released_type": MessageLookupByLibrary.simpleMessage("Release Type:"),
        "remove_address": MessageLookupByLibrary.simpleMessage("Remove"),
        "remove_collection_btn":
            MessageLookupByLibrary.simpleMessage("REMOVE FROM COLLECTION"),
        "remove_item": MessageLookupByLibrary.simpleMessage("REMOVE ITEM"),
        "remove_item_btn": MessageLookupByLibrary.simpleMessage("REMOVE"),
        "remove_item_subtitle": MessageLookupByLibrary.simpleMessage(
            "Please select the item you would like to remove from your collection."),
        "remove_listing":
            MessageLookupByLibrary.simpleMessage("REMOVE LISTING"),
        "remove_listing_subtitle": MessageLookupByLibrary.simpleMessage(
            "Please select the reason you are removing this listing."),
        "required_field":
            MessageLookupByLibrary.simpleMessage("Required field"),
        "resend_email": MessageLookupByLibrary.simpleMessage("Resend Email"),
        "resend_verification_email":
            MessageLookupByLibrary.simpleMessage("RESEND VERIFICATION EMAIL"),
        "reset_password_btn":
            MessageLookupByLibrary.simpleMessage("RESET PASSWORD"),
        "reset_password_description": MessageLookupByLibrary.simpleMessage(
            "Please enter and confirm your new password below."),
        "retail": MessageLookupByLibrary.simpleMessage("Retail:"),
        "sale_data": MessageLookupByLibrary.simpleMessage("SALE DATE"),
        "sale_pending_btn":
            MessageLookupByLibrary.simpleMessage("Sale pending"),
        "sales_history": MessageLookupByLibrary.simpleMessage("SALES HISTORY"),
        "save_address": MessageLookupByLibrary.simpleMessage(
            "Save address to your account"),
        "save_btn": MessageLookupByLibrary.simpleMessage("SAVE"),
        "save_search": MessageLookupByLibrary.simpleMessage("Save Search"),
        "saved_searches":
            MessageLookupByLibrary.simpleMessage("SAVED SEARCHES"),
        "sealed": MessageLookupByLibrary.simpleMessage("Sealed"),
        "sealed_item_four": MessageLookupByLibrary.simpleMessage(
            "•  Minimum of 3, Maximum of 6"),
        "sealed_item_one":
            MessageLookupByLibrary.simpleMessage("•  Front of item"),
        "sealed_item_three":
            MessageLookupByLibrary.simpleMessage("•  Tagged picture"),
        "sealed_item_two":
            MessageLookupByLibrary.simpleMessage("•  Back of item"),
        "search_hint": MessageLookupByLibrary.simpleMessage(
            "Search name, style, color etc"),
        "second_address":
            MessageLookupByLibrary.simpleMessage("Address 2 (optional)"),
        "security_sub_title":
            MessageLookupByLibrary.simpleMessage("Two-Step verification"),
        "security_title": MessageLookupByLibrary.simpleMessage("Security"),
        "see_info":
            MessageLookupByLibrary.simpleMessage("ⓘ  See info guidelines"),
        "see_photo_guidelines":
            MessageLookupByLibrary.simpleMessage("ⓘ  See photo guidelines"),
        "see_results": MessageLookupByLibrary.simpleMessage("SEE RESULTS"),
        "select_avatar_desc": MessageLookupByLibrary.simpleMessage(
            "Select an avatar below or add one from your camera/photos."),
        "select_item": MessageLookupByLibrary.simpleMessage("SELECT ITEM"),
        "selected": MessageLookupByLibrary.simpleMessage("Selected"),
        "sell_for": MessageLookupByLibrary.simpleMessage("SELL FOR"),
        "seller_buy_message":
            MessageLookupByLibrary.simpleMessage("has agreed to purchase your"),
        "send_info": MessageLookupByLibrary.simpleMessage("SEND INFO"),
        "settings": MessageLookupByLibrary.simpleMessage("SETTINGS"),
        "setup_payment": MessageLookupByLibrary.simpleMessage("Setup Payment"),
        "setup_payment_sub_title": MessageLookupByLibrary.simpleMessage(
            "You must setup at least one form of payment before you can list an item. "),
        "shipped_input_title": MessageLookupByLibrary.simpleMessage(
            "Please confirm or update your shipping address for this item to be shipped."),
        "shipping_address_title":
            MessageLookupByLibrary.simpleMessage("Shipping Address"),
        "shop_by_category_title":
            MessageLookupByLibrary.simpleMessage("SHOP BY CATEGORY"),
        "sign_in": MessageLookupByLibrary.simpleMessage("Sign In"),
        "sign_out": MessageLookupByLibrary.simpleMessage("Sign Out"),
        "similar_items": MessageLookupByLibrary.simpleMessage("SIMILAR ITEMS"),
        "sold_footer_title": m24,
        "sold_for": MessageLookupByLibrary.simpleMessage("SOLD FOR"),
        "sort": MessageLookupByLibrary.simpleMessage("Sort:"),
        "sort_by": MessageLookupByLibrary.simpleMessage("sort by"),
        "staff_picks": MessageLookupByLibrary.simpleMessage("STAFF PICKS"),
        "state": MessageLookupByLibrary.simpleMessage("State"),
        "stripe_error": MessageLookupByLibrary.simpleMessage("Stripe Error"),
        "subscription_title":
            MessageLookupByLibrary.simpleMessage("Subscription"),
        "subtitle_welcome":
            MessageLookupByLibrary.simpleMessage("Let’s create your profile!"),
        "swag_app_support_request":
            MessageLookupByLibrary.simpleMessage("Swag app support request"),
        "tab_collection": MessageLookupByLibrary.simpleMessage("COLLECTION"),
        "tab_favorites": MessageLookupByLibrary.simpleMessage("FAVORITES"),
        "tab_listings": MessageLookupByLibrary.simpleMessage("LISTINGS"),
        "tab_sold": MessageLookupByLibrary.simpleMessage("SOLD"),
        "terms_of_use": MessageLookupByLibrary.simpleMessage("Terms of Use"),
        "theme": MessageLookupByLibrary.simpleMessage("theme"),
        "title_list_for_Sale":
            MessageLookupByLibrary.simpleMessage("GOLDEN KING COVER"),
        "title_welcome":
            MessageLookupByLibrary.simpleMessage("WELCOME TO SWAG"),
        "toast_message_create_account": MessageLookupByLibrary.simpleMessage(
            "A verification email has been resent. \nPlease check your inbox."),
        "toast_message_forgot_password": MessageLookupByLibrary.simpleMessage(
            "A verification email has been sent"),
        "toast_message_reset_password": MessageLookupByLibrary.simpleMessage(
            "Your password has been successfully reset"),
        "total_mode": MessageLookupByLibrary.simpleMessage("Total Made:"),
        "type": MessageLookupByLibrary.simpleMessage("type"),
        "unicorn_covers":
            MessageLookupByLibrary.simpleMessage("UNICORN COVERS"),
        "unread": MessageLookupByLibrary.simpleMessage("Unread"),
        "unverified": MessageLookupByLibrary.simpleMessage("Unverified"),
        "user_problem_creating_account_in_the_swag_app":
            MessageLookupByLibrary.simpleMessage(
                "User problem creating account in the Swag App"),
        "user_problem_signing_into_the_swag_app":
            MessageLookupByLibrary.simpleMessage(
                "User problem signing into the Swag App"),
        "username": MessageLookupByLibrary.simpleMessage("@username"),
        "username_taken":
            MessageLookupByLibrary.simpleMessage("This username is taken "),
        "venmo": MessageLookupByLibrary.simpleMessage("Venmo"),
        "venmo_sub_title": MessageLookupByLibrary.simpleMessage(
            "Please enter and confirm your \nVenmo username."),
        "verify_email": MessageLookupByLibrary.simpleMessage("VERIFY EMAIL"),
        "verify_email_description": MessageLookupByLibrary.simpleMessage(
            "You must verify your email before you can import your data. Check your inbox for the email."),
        "verify_name": MessageLookupByLibrary.simpleMessage("@MRDOUG"),
        "view": MessageLookupByLibrary.simpleMessage("view"),
        "view_less": MessageLookupByLibrary.simpleMessage("View less details"),
        "view_more": MessageLookupByLibrary.simpleMessage("View more details"),
        "we_can_help": MessageLookupByLibrary.simpleMessage("WE CAN HELP!"),
        "we_can_help_description": MessageLookupByLibrary.simpleMessage(
            "Let us help you find what you have! Please complete the information below and a team member will review. We will be in touch with you soon.."),
        "we_can_help_sub_title": MessageLookupByLibrary.simpleMessage(
            "ADD PHOTOS OF THE FOLLOWING IF POSSIBLE:"),
        "whats_hot": MessageLookupByLibrary.simpleMessage("What\'s Hot"),
        "y2018": MessageLookupByLibrary.simpleMessage("2018"),
        "y2019": MessageLookupByLibrary.simpleMessage("2019"),
        "y2020": MessageLookupByLibrary.simpleMessage("2020"),
        "y2021": MessageLookupByLibrary.simpleMessage("2021"),
        "y2022": MessageLookupByLibrary.simpleMessage("2022"),
        "y2023": MessageLookupByLibrary.simpleMessage("2023"),
        "z_to_a": MessageLookupByLibrary.simpleMessage("Z to A"),
        "zip": MessageLookupByLibrary.simpleMessage("ZIP/Postal Code")
      };
}
