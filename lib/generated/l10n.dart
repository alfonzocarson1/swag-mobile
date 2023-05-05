// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Swag Golf`
  String get app_name {
    return Intl.message(
      'Swag Golf',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `EXPLORE AS GUEST`
  String get explore_as_guest {
    return Intl.message(
      'EXPLORE AS GUEST',
      name: 'explore_as_guest',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get create_account {
    return Intl.message(
      'Create Account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get sign_in {
    return Intl.message(
      'Sign In',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgot_password {
    return Intl.message(
      'Forgot Password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account? `
  String get dont_have_account {
    return Intl.message(
      'Don’t have an account? ',
      name: 'dont_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email address format`
  String get invalid_email {
    return Intl.message(
      'Invalid email address format',
      name: 'invalid_email',
      desc: '',
      args: [],
    );
  }

  /// `An account is already associated with this email`
  String get email_taken {
    return Intl.message(
      'An account is already associated with this email',
      name: 'email_taken',
      desc: '',
      args: [],
    );
  }

  /// `Invalid password`
  String get empty_password {
    return Intl.message(
      'Invalid password',
      name: 'empty_password',
      desc: '',
      args: [],
    );
  }

  /// `This field cannot be empty`
  String get field_empty {
    return Intl.message(
      'This field cannot be empty',
      name: 'field_empty',
      desc: '',
      args: [],
    );
  }

  /// `At least 8 characters, 1 uppercase, 1 number & 1 symbol`
  String get password_helper {
    return Intl.message(
      'At least 8 characters, 1 uppercase, 1 number & 1 symbol',
      name: 'password_helper',
      desc: '',
      args: [],
    );
  }

  /// `Password doesn’t meet requirements. Min. 8 characters, 1 uppercase, 1 number & 1 symbol`
  String get invalid_password {
    return Intl.message(
      'Password doesn’t meet requirements. Min. 8 characters, 1 uppercase, 1 number & 1 symbol',
      name: 'invalid_password',
      desc: '',
      args: [],
    );
  }

  /// `Password doesn’t match`
  String get no_match_password {
    return Intl.message(
      'Password doesn’t match',
      name: 'no_match_password',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get new_password {
    return Intl.message(
      'New Password',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirm_password {
    return Intl.message(
      'Confirm Password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Please enter and confirm your new password below.`
  String get reset_password_description {
    return Intl.message(
      'Please enter and confirm your new password below.',
      name: 'reset_password_description',
      desc: '',
      args: [],
    );
  }

  /// `FINISH`
  String get finish_btn {
    return Intl.message(
      'FINISH',
      name: 'finish_btn',
      desc: '',
      args: [],
    );
  }

  /// `Please check your email and enter your six digit code below.`
  String get forgot_password_code_description {
    return Intl.message(
      'Please check your email and enter your six digit code below.',
      name: 'forgot_password_code_description',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email to reset your password.`
  String get forgot_password_email_description {
    return Intl.message(
      'Enter your email to reset your password.',
      name: 'forgot_password_email_description',
      desc: '',
      args: [],
    );
  }

  /// `Code`
  String get code {
    return Intl.message(
      'Code',
      name: 'code',
      desc: '',
      args: [],
    );
  }

  /// `RESET PASSWORD`
  String get reset_password_btn {
    return Intl.message(
      'RESET PASSWORD',
      name: 'reset_password_btn',
      desc: '',
      args: [],
    );
  }

  /// `Resend Email`
  String get resend_email {
    return Intl.message(
      'Resend Email',
      name: 'resend_email',
      desc: '',
      args: [],
    );
  }

  /// `Didn’t get an email? `
  String get didnt_get_email {
    return Intl.message(
      'Didn’t get an email? ',
      name: 'didnt_get_email',
      desc: '',
      args: [],
    );
  }

  /// `WELCOME @`
  String get popup_title {
    return Intl.message(
      'WELCOME @',
      name: 'popup_title',
      desc: '',
      args: [],
    );
  }

  /// `It looks like you have an account on Swag.Golf. After you verify your email you will be able to  import your information into the Swag app.`
  String get popup_description {
    return Intl.message(
      'It looks like you have an account on Swag.Golf. After you verify your email you will be able to  import your information into the Swag app.',
      name: 'popup_description',
      desc: '',
      args: [],
    );
  }

  /// `IMPORT MY INFO`
  String get popup_btn_yes {
    return Intl.message(
      'IMPORT MY INFO',
      name: 'popup_btn_yes',
      desc: '',
      args: [],
    );
  }

  /// `NO, I'LL DO THIS LATER`
  String get popup_btn_no {
    return Intl.message(
      'NO, I\'LL DO THIS LATER',
      name: 'popup_btn_no',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect email or password. Please try again`
  String get incorrect_email_or_password {
    return Intl.message(
      'Incorrect email or password. Please try again',
      name: 'incorrect_email_or_password',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `@username`
  String get username {
    return Intl.message(
      '@username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `I agree to Swag’s `
  String get agree_to {
    return Intl.message(
      'I agree to Swag’s ',
      name: 'agree_to',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacy_policy_text {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy_policy_text',
      desc: '',
      args: [],
    );
  }

  /// ` \n& `
  String get and {
    return Intl.message(
      ' \n& ',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Use`
  String get terms_of_use {
    return Intl.message(
      'Terms of Use',
      name: 'terms_of_use',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? `
  String get already_have_an_account {
    return Intl.message(
      'Already have an account? ',
      name: 'already_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `An account is already associated with this phone number`
  String get phone_taken {
    return Intl.message(
      'An account is already associated with this phone number',
      name: 'phone_taken',
      desc: '',
      args: [],
    );
  }

  /// `Invalid format please try again.`
  String get invalid_phone_format {
    return Intl.message(
      'Invalid format please try again.',
      name: 'invalid_phone_format',
      desc: '',
      args: [],
    );
  }

  /// `This username is taken `
  String get username_taken {
    return Intl.message(
      'This username is taken ',
      name: 'username_taken',
      desc: '',
      args: [],
    );
  }

  /// `Username must be between 4-20 characters`
  String get invalid_username {
    return Intl.message(
      'Username must be between 4-20 characters',
      name: 'invalid_username',
      desc: '',
      args: [],
    );
  }

  /// `WELCOME TO SWAG`
  String get title_welcome {
    return Intl.message(
      'WELCOME TO SWAG',
      name: 'title_welcome',
      desc: '',
      args: [],
    );
  }

  /// `Let’s create your profile!`
  String get subtitle_welcome {
    return Intl.message(
      'Let’s create your profile!',
      name: 'subtitle_welcome',
      desc: '',
      args: [],
    );
  }

  /// `@MRDOUG`
  String get verify_name {
    return Intl.message(
      '@MRDOUG',
      name: 'verify_name',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get first_name {
    return Intl.message(
      'First Name',
      name: 'first_name',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get last_name {
    return Intl.message(
      'Last Name',
      name: 'last_name',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get country {
    return Intl.message(
      'Country',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `Preferred Shipping Address 1`
  String get first_address {
    return Intl.message(
      'Preferred Shipping Address 1',
      name: 'first_address',
      desc: '',
      args: [],
    );
  }

  /// `Address 2 (optional)`
  String get second_address {
    return Intl.message(
      'Address 2 (optional)',
      name: 'second_address',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `State`
  String get state {
    return Intl.message(
      'State',
      name: 'state',
      desc: '',
      args: [],
    );
  }

  /// `ZIP/Postal Code`
  String get zip {
    return Intl.message(
      'ZIP/Postal Code',
      name: 'zip',
      desc: '',
      args: [],
    );
  }

  /// `NEXT`
  String get next_btn {
    return Intl.message(
      'NEXT',
      name: 'next_btn',
      desc: '',
      args: [],
    );
  }

  /// `Select an avatar below or add one from your camera/photos.`
  String get select_avatar_desc {
    return Intl.message(
      'Select an avatar below or add one from your camera/photos.',
      name: 'select_avatar_desc',
      desc: '',
      args: [],
    );
  }

  /// `CHOOSE PHOTO`
  String get access_photos {
    return Intl.message(
      'CHOOSE PHOTO',
      name: 'access_photos',
      desc: '',
      args: [],
    );
  }

  /// `TAKE PHOTO`
  String get camera {
    return Intl.message(
      'TAKE PHOTO',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Required field`
  String get required_field {
    return Intl.message(
      'Required field',
      name: 'required_field',
      desc: '',
      args: [],
    );
  }

  /// `Search name, style, color etc`
  String get search_hint {
    return Intl.message(
      'Search name, style, color etc',
      name: 'search_hint',
      desc: '',
      args: [],
    );
  }

  /// `What's Hot`
  String get whats_hot {
    return Intl.message(
      'What\'s Hot',
      name: 'whats_hot',
      desc: '',
      args: [],
    );
  }

  /// `Headcovers`
  String get headcovers {
    return Intl.message(
      'Headcovers',
      name: 'headcovers',
      desc: '',
      args: [],
    );
  }

  /// `Putters`
  String get putters {
    return Intl.message(
      'Putters',
      name: 'putters',
      desc: '',
      args: [],
    );
  }

  /// `Accesories`
  String get accessories {
    return Intl.message(
      'Accesories',
      name: 'accessories',
      desc: '',
      args: [],
    );
  }

  /// `LAST SALE`
  String get last_sale {
    return Intl.message(
      'LAST SALE',
      name: 'last_sale',
      desc: '',
      args: [],
    );
  }

  /// `N/A`
  String get n_a {
    return Intl.message(
      'N/A',
      name: 'n_a',
      desc: '',
      args: [],
    );
  }

  /// `FOR SALE`
  String get for_sale {
    return Intl.message(
      'FOR SALE',
      name: 'for_sale',
      desc: '',
      args: [],
    );
  }

  /// `No items yet`
  String get empty_text {
    return Intl.message(
      'No items yet',
      name: 'empty_text',
      desc: '',
      args: [],
    );
  }

  /// `SALES HISTORY`
  String get sales_history {
    return Intl.message(
      'SALES HISTORY',
      name: 'sales_history',
      desc: '',
      args: [],
    );
  }

  /// `MY COLLECTION`
  String get my_collection {
    return Intl.message(
      'MY COLLECTION',
      name: 'my_collection',
      desc: '',
      args: [],
    );
  }

  /// `Acquired:`
  String get acquired {
    return Intl.message(
      'Acquired:',
      name: 'acquired',
      desc: '',
      args: [],
    );
  }

  /// `Paid:`
  String get paid {
    return Intl.message(
      'Paid:',
      name: 'paid',
      desc: '',
      args: [],
    );
  }

  /// `Condition`
  String get condition {
    return Intl.message(
      'Condition',
      name: 'condition',
      desc: '',
      args: [],
    );
  }

  /// `Collection`
  String get collection {
    return Intl.message(
      'Collection',
      name: 'collection',
      desc: '',
      args: [],
    );
  }

  /// `BUY FOR`
  String get buy_for {
    return Intl.message(
      'BUY FOR',
      name: 'buy_for',
      desc: '',
      args: [],
    );
  }

  /// `SELL FOR`
  String get sell_for {
    return Intl.message(
      'SELL FOR',
      name: 'sell_for',
      desc: '',
      args: [],
    );
  }

  /// `MAKE AN OFFER`
  String get make_an_offer {
    return Intl.message(
      'MAKE AN OFFER',
      name: 'make_an_offer',
      desc: '',
      args: [],
    );
  }

  /// `NOTIFY ME WHEN AVAILABLE`
  String get notify_available {
    return Intl.message(
      'NOTIFY ME WHEN AVAILABLE',
      name: 'notify_available',
      desc: '',
      args: [],
    );
  }

  /// `View more details`
  String get view_more {
    return Intl.message(
      'View more details',
      name: 'view_more',
      desc: '',
      args: [],
    );
  }

  /// `View less details`
  String get view_less {
    return Intl.message(
      'View less details',
      name: 'view_less',
      desc: '',
      args: [],
    );
  }

  /// `RARITY SCORE`
  String get rarity_score {
    return Intl.message(
      'RARITY SCORE',
      name: 'rarity_score',
      desc: '',
      args: [],
    );
  }

  /// `Released:`
  String get released {
    return Intl.message(
      'Released:',
      name: 'released',
      desc: '',
      args: [],
    );
  }

  /// `Release Type:`
  String get released_type {
    return Intl.message(
      'Release Type:',
      name: 'released_type',
      desc: '',
      args: [],
    );
  }

  /// `Total Made:`
  String get total_mode {
    return Intl.message(
      'Total Made:',
      name: 'total_mode',
      desc: '',
      args: [],
    );
  }

  /// `Retail:`
  String get retail {
    return Intl.message(
      'Retail:',
      name: 'retail',
      desc: '',
      args: [],
    );
  }

  /// `Available:`
  String get available {
    return Intl.message(
      'Available:',
      name: 'available',
      desc: '',
      args: [],
    );
  }

  /// `SIMILAR ITEMS`
  String get similar_items {
    return Intl.message(
      'SIMILAR ITEMS',
      name: 'similar_items',
      desc: '',
      args: [],
    );
  }

  /// `This cover is not in your collection, buy it now before it’s too late`
  String get collection_message {
    return Intl.message(
      'This cover is not in your collection, buy it now before it’s too late',
      name: 'collection_message',
      desc: '',
      args: [],
    );
  }

  /// `COLLECTION`
  String get tab_collection {
    return Intl.message(
      'COLLECTION',
      name: 'tab_collection',
      desc: '',
      args: [],
    );
  }

  /// `LISTINGS`
  String get tab_listings {
    return Intl.message(
      'LISTINGS',
      name: 'tab_listings',
      desc: '',
      args: [],
    );
  }

  /// `FAVORITES`
  String get tab_favorites {
    return Intl.message(
      'FAVORITES',
      name: 'tab_favorites',
      desc: '',
      args: [],
    );
  }

  /// `SOLD`
  String get tab_sold {
    return Intl.message(
      'SOLD',
      name: 'tab_sold',
      desc: '',
      args: [],
    );
  }

  /// `VERIFY EMAIL`
  String get verify_email {
    return Intl.message(
      'VERIFY EMAIL',
      name: 'verify_email',
      desc: '',
      args: [],
    );
  }

  /// `You must verify your email before you can import your data. Check your inbox for the email.`
  String get verify_email_description {
    return Intl.message(
      'You must verify your email before you can import your data. Check your inbox for the email.',
      name: 'verify_email_description',
      desc: '',
      args: [],
    );
  }

  /// `RESEND VERIFICATION EMAIL`
  String get resend_verification_email {
    return Intl.message(
      'RESEND VERIFICATION EMAIL',
      name: 'resend_verification_email',
      desc: '',
      args: [],
    );
  }

  /// `Didn’t get an email?`
  String get get_an_email {
    return Intl.message(
      'Didn’t get an email?',
      name: 'get_an_email',
      desc: '',
      args: [],
    );
  }

  /// `*You’ll be able to make updates later.`
  String get import_late {
    return Intl.message(
      '*You’ll be able to make updates later.',
      name: 'import_late',
      desc: '',
      args: [],
    );
  }

  /// `ADD NEW ITEM`
  String get add_new_item {
    return Intl.message(
      'ADD NEW ITEM',
      name: 'add_new_item',
      desc: '',
      args: [],
    );
  }

  /// `RECENT SEARCHES`
  String get recent_searches {
    return Intl.message(
      'RECENT SEARCHES',
      name: 'recent_searches',
      desc: '',
      args: [],
    );
  }

  /// `SAVED SEARCHES`
  String get saved_searches {
    return Intl.message(
      'SAVED SEARCHES',
      name: 'saved_searches',
      desc: '',
      args: [],
    );
  }

  /// `Save Search`
  String get save_search {
    return Intl.message(
      'Save Search',
      name: 'save_search',
      desc: '',
      args: [],
    );
  }

  /// `Sort:`
  String get sort {
    return Intl.message(
      'Sort:',
      name: 'sort',
      desc: '',
      args: [],
    );
  }

  /// `SALE DATE`
  String get sale_data {
    return Intl.message(
      'SALE DATE',
      name: 'sale_data',
      desc: '',
      args: [],
    );
  }

  /// `PRICE`
  String get price {
    return Intl.message(
      'PRICE',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `Purchase Price`
  String get purchase_price {
    return Intl.message(
      'Purchase Price',
      name: 'purchase_price',
      desc: '',
      args: [],
    );
  }

  /// `ADD TO COLLECTION`
  String get add_collection {
    return Intl.message(
      'ADD TO COLLECTION',
      name: 'add_collection',
      desc: '',
      args: [],
    );
  }

  /// `ADD TO YOUR COLLECTION`
  String get add_collection_title {
    return Intl.message(
      'ADD TO YOUR COLLECTION',
      name: 'add_collection_title',
      desc: '',
      args: [],
    );
  }

  /// `I DON’T KNOW/ NOT LISTED`
  String get i_do_not_know {
    return Intl.message(
      'I DON’T KNOW/ NOT LISTED',
      name: 'i_do_not_know',
      desc: '',
      args: [],
    );
  }

  /// `ⓘ  See info guidelines`
  String get see_info {
    return Intl.message(
      'ⓘ  See info guidelines',
      name: 'see_info',
      desc: '',
      args: [],
    );
  }

  /// `SEND INFO`
  String get send_info {
    return Intl.message(
      'SEND INFO',
      name: 'send_info',
      desc: '',
      args: [],
    );
  }

  /// `WE CAN HELP!`
  String get we_can_help {
    return Intl.message(
      'WE CAN HELP!',
      name: 'we_can_help',
      desc: '',
      args: [],
    );
  }

  /// `ADD PHOTOS OF THE FOLLOWING IF POSSIBLE:`
  String get we_can_help_sub_title {
    return Intl.message(
      'ADD PHOTOS OF THE FOLLOWING IF POSSIBLE:',
      name: 'we_can_help_sub_title',
      desc: '',
      args: [],
    );
  }

  /// `Let us help you find what you have! Please complete the information below and a team member will review. We will be in touch with you soon..`
  String get we_can_help_description {
    return Intl.message(
      'Let us help you find what you have! Please complete the information below and a team member will review. We will be in touch with you soon..',
      name: 'we_can_help_description',
      desc: '',
      args: [],
    );
  }

  /// `ADD PHOTOS`
  String get add_photos {
    return Intl.message(
      'ADD PHOTOS',
      name: 'add_photos',
      desc: '',
      args: [],
    );
  }

  /// `• The tag on the inside of the headcover`
  String get photo_condition_one {
    return Intl.message(
      '• The tag on the inside of the headcover',
      name: 'photo_condition_one',
      desc: '',
      args: [],
    );
  }

  /// `• Hologram in upper corner of packaging`
  String get photo_condition_two {
    return Intl.message(
      '• Hologram in upper corner of packaging',
      name: 'photo_condition_two',
      desc: '',
      args: [],
    );
  }

  /// `• All sides of the product`
  String get photo_condition_three {
    return Intl.message(
      '• All sides of the product',
      name: 'photo_condition_three',
      desc: '',
      args: [],
    );
  }

  /// `• Minimum of 4 photos maximum of 6`
  String get photo_condition_four {
    return Intl.message(
      '• Minimum of 4 photos maximum of 6',
      name: 'photo_condition_four',
      desc: '',
      args: [],
    );
  }

  /// `Date Purchased`
  String get date_purchased {
    return Intl.message(
      'Date Purchased',
      name: 'date_purchased',
      desc: '',
      args: [],
    );
  }

  /// `SELECT ITEM`
  String get select_item {
    return Intl.message(
      'SELECT ITEM',
      name: 'select_item',
      desc: '',
      args: [],
    );
  }

  /// `DETAILS`
  String get detail {
    return Intl.message(
      'DETAILS',
      name: 'detail',
      desc: '',
      args: [],
    );
  }

  /// `INFO GUIDELINES`
  String get info_guideline_popup_title {
    return Intl.message(
      'INFO GUIDELINES',
      name: 'info_guideline_popup_title',
      desc: '',
      args: [],
    );
  }

  /// `Please provide as much information as you can about the product and how you acquired it. Be sure to include the following:`
  String get info_guideline_popup_sub_title {
    return Intl.message(
      'Please provide as much information as you can about the product and how you acquired it. Be sure to include the following:',
      name: 'info_guideline_popup_sub_title',
      desc: '',
      args: [],
    );
  }

  /// `• Detailed product description`
  String get info_guideline_popup_badg_one {
    return Intl.message(
      '• Detailed product description',
      name: 'info_guideline_popup_badg_one',
      desc: '',
      args: [],
    );
  }

  /// `• Who you acquired item from`
  String get info_guideline_popup_badg_two {
    return Intl.message(
      '• Who you acquired item from',
      name: 'info_guideline_popup_badg_two',
      desc: '',
      args: [],
    );
  }

  /// `• Any relation to someone at Swag?`
  String get info_guideline_popup_badg_three {
    return Intl.message(
      '• Any relation to someone at Swag?',
      name: 'info_guideline_popup_badg_three',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure`
  String get existing_item_to_collection_error_title {
    return Intl.message(
      'Are you sure',
      name: 'existing_item_to_collection_error_title',
      desc: '',
      args: [],
    );
  }

  /// `It looks like you already have this item in your collection. Are you sure you want to add another one?`
  String get existing_item_to_collection_error_sub_desc {
    return Intl.message(
      'It looks like you already have this item in your collection. Are you sure you want to add another one?',
      name: 'existing_item_to_collection_error_sub_desc',
      desc: '',
      args: [],
    );
  }

  /// `YES, ADD ANOTHER`
  String get existing_item_to_collection_error_btn {
    return Intl.message(
      'YES, ADD ANOTHER',
      name: 'existing_item_to_collection_error_btn',
      desc: '',
      args: [],
    );
  }

  /// `REMOVE FROM COLLECTION`
  String get remove_collection_btn {
    return Intl.message(
      'REMOVE FROM COLLECTION',
      name: 'remove_collection_btn',
      desc: '',
      args: [],
    );
  }

  /// `LIST FOR SALE`
  String get list_for_sale_btn {
    return Intl.message(
      'LIST FOR SALE',
      name: 'list_for_sale_btn',
      desc: '',
      args: [],
    );
  }

  /// `RECEIVE OFFERS ON THIS ITEM`
  String get receive_offer {
    return Intl.message(
      'RECEIVE OFFERS ON THIS ITEM',
      name: 'receive_offer',
      desc: '',
      args: [],
    );
  }

  /// `filters`
  String get filters_title {
    return Intl.message(
      'filters',
      name: 'filters_title',
      desc: '',
      args: [],
    );
  }

  /// `Clear All`
  String get clear_all {
    return Intl.message(
      'Clear All',
      name: 'clear_all',
      desc: '',
      args: [],
    );
  }

  /// `view`
  String get view {
    return Intl.message(
      'view',
      name: 'view',
      desc: '',
      args: [],
    );
  }

  /// `category`
  String get category {
    return Intl.message(
      'category',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `sort by`
  String get sort_by {
    return Intl.message(
      'sort by',
      name: 'sort_by',
      desc: '',
      args: [],
    );
  }

  /// `type`
  String get type {
    return Intl.message(
      'type',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `collections`
  String get collections {
    return Intl.message(
      'collections',
      name: 'collections',
      desc: '',
      args: [],
    );
  }

  /// `release date`
  String get release_date {
    return Intl.message(
      'release date',
      name: 'release_date',
      desc: '',
      args: [],
    );
  }

  /// `price range`
  String get price_range {
    return Intl.message(
      'price range',
      name: 'price_range',
      desc: '',
      args: [],
    );
  }

  /// `theme`
  String get theme {
    return Intl.message(
      'theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Release Date - Newest`
  String get release_date_newest {
    return Intl.message(
      'Release Date - Newest',
      name: 'release_date_newest',
      desc: '',
      args: [],
    );
  }

  /// `Release Date - Oldest`
  String get release_date_oldest {
    return Intl.message(
      'Release Date - Oldest',
      name: 'release_date_oldest',
      desc: '',
      args: [],
    );
  }

  /// `Price: High to Low`
  String get price_high_to_low {
    return Intl.message(
      'Price: High to Low',
      name: 'price_high_to_low',
      desc: '',
      args: [],
    );
  }

  /// `Price: Low to High`
  String get price_low_to_high {
    return Intl.message(
      'Price: Low to High',
      name: 'price_low_to_high',
      desc: '',
      args: [],
    );
  }

  /// `A to Z`
  String get a_to_z {
    return Intl.message(
      'A to Z',
      name: 'a_to_z',
      desc: '',
      args: [],
    );
  }

  /// `Z to A`
  String get z_to_a {
    return Intl.message(
      'Z to A',
      name: 'z_to_a',
      desc: '',
      args: [],
    );
  }

  /// `Sealed`
  String get sealed {
    return Intl.message(
      'Sealed',
      name: 'sealed',
      desc: '',
      args: [],
    );
  }

  /// `Displayed`
  String get displayed {
    return Intl.message(
      'Displayed',
      name: 'displayed',
      desc: '',
      args: [],
    );
  }

  /// `Gamed`
  String get gamed {
    return Intl.message(
      'Gamed',
      name: 'gamed',
      desc: '',
      args: [],
    );
  }

  /// `Less than $111`
  String get less_than {
    return Intl.message(
      'Less than \$111',
      name: 'less_than',
      desc: '',
      args: [],
    );
  }

  /// `$111 - $222`
  String get b111_222 {
    return Intl.message(
      '\$111 - \$222',
      name: 'b111_222',
      desc: '',
      args: [],
    );
  }

  /// `$222 - $555`
  String get b222_555 {
    return Intl.message(
      '\$222 - \$555',
      name: 'b222_555',
      desc: '',
      args: [],
    );
  }

  /// `$555 - Above`
  String get b555_above {
    return Intl.message(
      '\$555 - Above',
      name: 'b555_above',
      desc: '',
      args: [],
    );
  }

  /// `2018`
  String get y2018 {
    return Intl.message(
      '2018',
      name: 'y2018',
      desc: '',
      args: [],
    );
  }

  /// `2019`
  String get y2019 {
    return Intl.message(
      '2019',
      name: 'y2019',
      desc: '',
      args: [],
    );
  }

  /// `2020`
  String get y2020 {
    return Intl.message(
      '2020',
      name: 'y2020',
      desc: '',
      args: [],
    );
  }

  /// `2021`
  String get y2021 {
    return Intl.message(
      '2021',
      name: 'y2021',
      desc: '',
      args: [],
    );
  }

  /// `2022`
  String get y2022 {
    return Intl.message(
      '2022',
      name: 'y2022',
      desc: '',
      args: [],
    );
  }

  /// `2023`
  String get y2023 {
    return Intl.message(
      '2023',
      name: 'y2023',
      desc: '',
      args: [],
    );
  }

  /// `SEE RESULTS`
  String get see_results {
    return Intl.message(
      'SEE RESULTS',
      name: 'see_results',
      desc: '',
      args: [],
    );
  }

  /// `IMAGE GUIDELINES`
  String get image_guidelines {
    return Intl.message(
      'IMAGE GUIDELINES',
      name: 'image_guidelines',
      desc: '',
      args: [],
    );
  }

  /// `Include the following images with your listing. Photos MUST include a physical note with username and date.`
  String get image_guidelines_description {
    return Intl.message(
      'Include the following images with your listing. Photos MUST include a physical note with username and date.',
      name: 'image_guidelines_description',
      desc: '',
      args: [],
    );
  }

  /// `DISPLAYED/GAMED:`
  String get displayed_gamed {
    return Intl.message(
      'DISPLAYED/GAMED:',
      name: 'displayed_gamed',
      desc: '',
      args: [],
    );
  }

  /// `•  Front of item`
  String get sealed_item_one {
    return Intl.message(
      '•  Front of item',
      name: 'sealed_item_one',
      desc: '',
      args: [],
    );
  }

  /// `•  Back of item`
  String get sealed_item_two {
    return Intl.message(
      '•  Back of item',
      name: 'sealed_item_two',
      desc: '',
      args: [],
    );
  }

  /// `•  Tagged picture`
  String get sealed_item_three {
    return Intl.message(
      '•  Tagged picture',
      name: 'sealed_item_three',
      desc: '',
      args: [],
    );
  }

  /// `•  Minimum of 3, photos Max of 6`
  String get sealed_item_four {
    return Intl.message(
      '•  Minimum of 3, photos Max of 6',
      name: 'sealed_item_four',
      desc: '',
      args: [],
    );
  }

  /// `•  Bottom of item`
  String get displayed_gamed_item_three {
    return Intl.message(
      '•  Bottom of item',
      name: 'displayed_gamed_item_three',
      desc: '',
      args: [],
    );
  }

  /// `•  Minimum of 4, photos Max of 6`
  String get displayed_gamed_item_four {
    return Intl.message(
      '•  Minimum of 4, photos Max of 6',
      name: 'displayed_gamed_item_four',
      desc: '',
      args: [],
    );
  }

  /// `LIST ITEM FOR SALE`
  String get list_item_for_sale {
    return Intl.message(
      'LIST ITEM FOR SALE',
      name: 'list_item_for_sale',
      desc: '',
      args: [],
    );
  }

  /// `ⓘ  See photo guidelines`
  String get see_photo_guidelines {
    return Intl.message(
      'ⓘ  See photo guidelines',
      name: 'see_photo_guidelines',
      desc: '',
      args: [],
    );
  }

  /// `GOLDEN KING COVER`
  String get title_list_for_Sale {
    return Intl.message(
      'GOLDEN KING COVER',
      name: 'title_list_for_Sale',
      desc: '',
      args: [],
    );
  }

  /// `List Price`
  String get list_price_input {
    return Intl.message(
      'List Price',
      name: 'list_price_input',
      desc: '',
      args: [],
    );
  }

  /// `PREVIEW LISTING`
  String get preview_listing {
    return Intl.message(
      'PREVIEW LISTING',
      name: 'preview_listing',
      desc: '',
      args: [],
    );
  }

  /// `Additional listing details...`
  String get aditional_listing_detail {
    return Intl.message(
      'Additional listing details...',
      name: 'aditional_listing_detail',
      desc: '',
      args: [],
    );
  }

  /// `LIST ITEM`
  String get list_item_popup_title {
    return Intl.message(
      'LIST ITEM',
      name: 'list_item_popup_title',
      desc: '',
      args: [],
    );
  }

  /// `Please select the item you would like to list for sale.`
  String get list_item_popup_desc {
    return Intl.message(
      'Please select the item you would like to list for sale.',
      name: 'list_item_popup_desc',
      desc: '',
      args: [],
    );
  }

  /// `CREATE LISTING`
  String get ist_item_popup_btn {
    return Intl.message(
      'CREATE LISTING',
      name: 'ist_item_popup_btn',
      desc: '',
      args: [],
    );
  }

  /// `POST LISTING`
  String get post_listing_btn {
    return Intl.message(
      'POST LISTING',
      name: 'post_listing_btn',
      desc: '',
      args: [],
    );
  }

  /// `cannot enter more than 2 decimal places`
  String get price_validations_msj {
    return Intl.message(
      'cannot enter more than 2 decimal places',
      name: 'price_validations_msj',
      desc: '',
      args: [],
    );
  }

  /// `DELETE PHOTO`
  String get delete_photo {
    return Intl.message(
      'DELETE PHOTO',
      name: 'delete_photo',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this photo?`
  String get delete_photo_descrption {
    return Intl.message(
      'Are you sure you want to delete this photo?',
      name: 'delete_photo_descrption',
      desc: '',
      args: [],
    );
  }

  /// `DELETE`
  String get delete {
    return Intl.message(
      'DELETE',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `CANCEL`
  String get cancel {
    return Intl.message(
      'CANCEL',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Selected`
  String get selected {
    return Intl.message(
      'Selected',
      name: 'selected',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect code. Please check and try again.`
  String get incorrect_code {
    return Intl.message(
      'Incorrect code. Please check and try again.',
      name: 'incorrect_code',
      desc: '',
      args: [],
    );
  }

  /// `Code expired. Please select resend to receive new code.`
  String get code_expired {
    return Intl.message(
      'Code expired. Please select resend to receive new code.',
      name: 'code_expired',
      desc: '',
      args: [],
    );
  }

  /// `WHALE ALERT`
  String get multi_collection_title {
    return Intl.message(
      'WHALE ALERT',
      name: 'multi_collection_title',
      desc: '',
      args: [],
    );
  }

  /// `It looks like you already have this item in your collection. Are you sure you want to add another?`
  String get multi_collection_subtitle {
    return Intl.message(
      'It looks like you already have this item in your collection. Are you sure you want to add another?',
      name: 'multi_collection_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `ADD ANOTHER`
  String get add_multi_collection_btn {
    return Intl.message(
      'ADD ANOTHER',
      name: 'add_multi_collection_btn',
      desc: '',
      args: [],
    );
  }

  /// `Item was sold elsewhere`
  String get delete_collection_razon_1 {
    return Intl.message(
      'Item was sold elsewhere',
      name: 'delete_collection_razon_1',
      desc: '',
      args: [],
    );
  }

  /// `Item was gifted`
  String get delete_collection_razon_2 {
    return Intl.message(
      'Item was gifted',
      name: 'delete_collection_razon_2',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get delete_collection_razon_3 {
    return Intl.message(
      'Other',
      name: 'delete_collection_razon_3',
      desc: '',
      args: [],
    );
  }

  /// `REMOVE ITEM`
  String get remove_item {
    return Intl.message(
      'REMOVE ITEM',
      name: 'remove_item',
      desc: '',
      args: [],
    );
  }

  /// `Please select the reason you are removing this item.`
  String get razon_remove_subtitle {
    return Intl.message(
      'Please select the reason you are removing this item.',
      name: 'razon_remove_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Please select the item you would like to remove from your collection.`
  String get remove_item_subtitle {
    return Intl.message(
      'Please select the item you would like to remove from your collection.',
      name: 'remove_item_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to remove this item from you collection? This item is also listed for sale. Removing the item from your collection will also remove the listing.`
  String get alert_remove_subtitle {
    return Intl.message(
      'Are you sure you want to remove this item from you collection? This item is also listed for sale. Removing the item from your collection will also remove the listing.',
      name: 'alert_remove_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `SUBMIT`
  String get razon_remove_btn {
    return Intl.message(
      'SUBMIT',
      name: 'razon_remove_btn',
      desc: '',
      args: [],
    );
  }

  /// `REMOVE`
  String get remove_item_btn {
    return Intl.message(
      'REMOVE',
      name: 'remove_item_btn',
      desc: '',
      args: [],
    );
  }

  /// `REMOVE ITEM`
  String get alert_remove_btn {
    return Intl.message(
      'REMOVE ITEM',
      name: 'alert_remove_btn',
      desc: '',
      args: [],
    );
  }

  /// `ADD TO YOUR COLLECTION`
  String get add_to_wall_collection_title {
    return Intl.message(
      'ADD TO YOUR COLLECTION',
      name: 'add_to_wall_collection_title',
      desc: '',
      args: [],
    );
  }

  /// `Select the type of product you would like to add to your collection.`
  String get add_to_wall_collection_subtitle {
    return Intl.message(
      'Select the type of product you would like to add to your collection.',
      name: 'add_to_wall_collection_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `A verification email has been resent. \nPlease check your inbox.`
  String get toast_message_create_account {
    return Intl.message(
      'A verification email has been resent. \nPlease check your inbox.',
      name: 'toast_message_create_account',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect email. Please try again.`
  String get invadlidEmail {
    return Intl.message(
      'Incorrect email. Please try again.',
      name: 'invadlidEmail',
      desc: '',
      args: [],
    );
  }

  /// `A verification email has been sent`
  String get toast_message_forgot_password {
    return Intl.message(
      'A verification email has been sent',
      name: 'toast_message_forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Your password has been successfully reset`
  String get toast_message_reset_password {
    return Intl.message(
      'Your password has been successfully reset',
      name: 'toast_message_reset_password',
      desc: '',
      args: [],
    );
  }

  /// `Please enter code.`
  String get code_not_entered_message {
    return Intl.message(
      'Please enter code.',
      name: 'code_not_entered_message',
      desc: '',
      args: [],
    );
  }

  /// `TAP THE “+” ICON ON ANY ITEM TO ADD TO YOUR COLLECTION`
  String get empty_collection {
    return Intl.message(
      'TAP THE “+” ICON ON ANY ITEM TO ADD TO YOUR COLLECTION',
      name: 'empty_collection',
      desc: '',
      args: [],
    );
  }

  /// `TAP THE SKULL ICON NEXT TO ANY ITEM TO SAVE TO YOUR FAVORITES.`
  String get empty_favorite {
    return Intl.message(
      'TAP THE SKULL ICON NEXT TO ANY ITEM TO SAVE TO YOUR FAVORITES.',
      name: 'empty_favorite',
      desc: '',
      args: [],
    );
  }

  /// `YOU DON’T HAVE ANY LISTINGS. ALL YOUR LISTINGS WILL APPEAR HERE.`
  String get empty_listing {
    return Intl.message(
      'YOU DON’T HAVE ANY LISTINGS. ALL YOUR LISTINGS WILL APPEAR HERE.',
      name: 'empty_listing',
      desc: '',
      args: [],
    );
  }

  /// `YOU HAVEN’T SOLD ANY ITEMS YET. ALL YOUR SOLD ITEMS WILL APPEAR HERE.`
  String get empty_sold {
    return Intl.message(
      'YOU HAVEN’T SOLD ANY ITEMS YET. ALL YOUR SOLD ITEMS WILL APPEAR HERE.',
      name: 'empty_sold',
      desc: '',
      args: [],
    );
  }

  /// `COLLECTION VALUE:`
  String get collection_value {
    return Intl.message(
      'COLLECTION VALUE:',
      name: 'collection_value',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
