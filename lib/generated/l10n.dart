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

  /// `CREATE ACCOUNT`
  String get create_account {
    return Intl.message(
      'CREATE ACCOUNT',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `SIGN IN`
  String get sign_in {
    return Intl.message(
      'SIGN IN',
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

  /// `Don’t have an account? *Create Account*`
  String get dont_have_account {
    return Intl.message(
      'Don’t have an account? *Create Account*',
      name: 'dont_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email address`
  String get invalid_email {
    return Intl.message(
      'Invalid email address',
      name: 'invalid_email',
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

  /// `Didn’t get an email? *Resend Email*`
  String get resend_email {
    return Intl.message(
      'Didn’t get an email? *Resend Email*',
      name: 'resend_email',
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

  /// `It looks like you have an account on swag.golf. After you verify your email you will be able to  import your information into the Swag app.`
  String get popup_description {
    return Intl.message(
      'It looks like you have an account on swag.golf. After you verify your email you will be able to  import your information into the Swag app.',
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

  /// `I agree to Swag’s *Privacy Policy* \n& *Terms of Use*`
  String get privacy_policy_text {
    return Intl.message(
      'I agree to Swag’s *Privacy Policy* \n& *Terms of Use*',
      name: 'privacy_policy_text',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? *Sign In*`
  String get already_have_an_account {
    return Intl.message(
      'Already have an account? *Sign In*',
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

  /// `This username is taken `
  String get username_taken {
    return Intl.message(
      'This username is taken ',
      name: 'username_taken',
      desc: '',
      args: [],
    );
  }

  /// `username must be between 4-20 characters`
  String get invalid_username {
    return Intl.message(
      'username must be between 4-20 characters',
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

  /// `Condition:`
  String get Condition {
    return Intl.message(
      'Condition:',
      name: 'Condition',
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

  /// `RARITY SCORE: `
  String get rarity_score {
    return Intl.message(
      'RARITY SCORE: ',
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
  String get collection {
    return Intl.message(
      'This cover is not in your collection, buy it now before it’s too late',
      name: 'collection',
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

  /// `CONDITION`
  String get condition {
    return Intl.message(
      'CONDITION',
      name: 'condition',
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

  /// `Let us help you find what you have! Please complete the information below and a team member will review. We will be in touch  with you soon..`
  String get we_can_help_description {
    return Intl.message(
      'Let us help you find what you have! Please complete the information below and a team member will review. We will be in touch  with you soon..',
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
