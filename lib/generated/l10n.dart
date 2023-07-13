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

  /// `NO ITEMS MATCH YOUR SEARCH!`
  String get empty_search_result {
    return Intl.message(
      'NO ITEMS MATCH YOUR SEARCH!',
      name: 'empty_search_result',
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

  /// `• Minimum of 4, Maximum of 6`
  String get photo_condition_four {
    return Intl.message(
      '• Minimum of 4, Maximum of 6',
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

  /// `DISPLAYED /GAMED:`
  String get displayed_gamed {
    return Intl.message(
      'DISPLAYED /GAMED:',
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

  /// `•  Minimum of 3, Maximum of 6`
  String get sealed_item_four {
    return Intl.message(
      '•  Minimum of 3, Maximum of 6',
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

  /// `•  Minimum of 4, Maximum of 6`
  String get displayed_gamed_item_four {
    return Intl.message(
      '•  Minimum of 4, Maximum of 6',
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

  /// `Please select an item to list`
  String get list_item_popup_please_select {
    return Intl.message(
      'Please select an item to list',
      name: 'list_item_popup_please_select',
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

  /// `Changed my mind`
  String get delete_collection_reason_4 {
    return Intl.message(
      'Changed my mind',
      name: 'delete_collection_reason_4',
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

  /// `REMOVE LISTING`
  String get remove_listing {
    return Intl.message(
      'REMOVE LISTING',
      name: 'remove_listing',
      desc: '',
      args: [],
    );
  }

  /// `Please select the reason you are removing this listing.`
  String get remove_listing_subtitle {
    return Intl.message(
      'Please select the reason you are removing this listing.',
      name: 'remove_listing_subtitle',
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

  /// `ESTIMATED COLLECTION VALUE:`
  String get collection_value {
    return Intl.message(
      'ESTIMATED COLLECTION VALUE:',
      name: 'collection_value',
      desc: '',
      args: [],
    );
  }

  /// `SHOP BY CATEGORY`
  String get shop_by_category_title {
    return Intl.message(
      'SHOP BY CATEGORY',
      name: 'shop_by_category_title',
      desc: '',
      args: [],
    );
  }

  /// `See All`
  String get See_All {
    return Intl.message(
      'See All',
      name: 'See_All',
      desc: '',
      args: [],
    );
  }

  /// `STAFF PICKS`
  String get staff_picks {
    return Intl.message(
      'STAFF PICKS',
      name: 'staff_picks',
      desc: '',
      args: [],
    );
  }

  /// `UNICORN COVERS`
  String get unicorn_covers {
    return Intl.message(
      'UNICORN COVERS',
      name: 'unicorn_covers',
      desc: '',
      args: [],
    );
  }

  /// `You will be notified when this item is available.`
  String get notify_availability {
    return Intl.message(
      'You will be notified when this item is available.',
      name: 'notify_availability',
      desc: '',
      args: [],
    );
  }

  /// `You have already requested to be notified.  We will notify you when item is listed for sale.`
  String get notification_already_requested {
    return Intl.message(
      'You have already requested to be notified.  We will notify you when item is listed for sale.',
      name: 'notification_already_requested',
      desc: '',
      args: [],
    );
  }

  /// `Collection item(s) already listed`
  String get collection_listed {
    return Intl.message(
      'Collection item(s) already listed',
      name: 'collection_listed',
      desc: '',
      args: [],
    );
  }

  /// `SETTINGS`
  String get settings {
    return Intl.message(
      'SETTINGS',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account_title {
    return Intl.message(
      'Account',
      name: 'account_title',
      desc: '',
      args: [],
    );
  }

  /// `Billing, shipping, payment`
  String get account_sub_title {
    return Intl.message(
      'Billing, shipping, payment',
      name: 'account_sub_title',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile_title {
    return Intl.message(
      'Profile',
      name: 'profile_title',
      desc: '',
      args: [],
    );
  }

  /// `Username, email, password, phone`
  String get profile_sub_title {
    return Intl.message(
      'Username, email, password, phone',
      name: 'profile_sub_title',
      desc: '',
      args: [],
    );
  }

  /// `Purchase History`
  String get purchase_title {
    return Intl.message(
      'Purchase History',
      name: 'purchase_title',
      desc: '',
      args: [],
    );
  }

  /// `Atomic Drops purchases`
  String get purchase_sub_title {
    return Intl.message(
      'Atomic Drops purchases',
      name: 'purchase_sub_title',
      desc: '',
      args: [],
    );
  }

  /// `Security`
  String get security_title {
    return Intl.message(
      'Security',
      name: 'security_title',
      desc: '',
      args: [],
    );
  }

  /// `Two-Step verification`
  String get security_sub_title {
    return Intl.message(
      'Two-Step verification',
      name: 'security_sub_title',
      desc: '',
      args: [],
    );
  }

  /// `NFT Wallet`
  String get nft_wallet_title {
    return Intl.message(
      'NFT Wallet',
      name: 'nft_wallet_title',
      desc: '',
      args: [],
    );
  }

  /// `Connect your OpenSea Wallet`
  String get nft_wallet_sub_title {
    return Intl.message(
      'Connect your OpenSea Wallet',
      name: 'nft_wallet_sub_title',
      desc: '',
      args: [],
    );
  }

  /// `Communications`
  String get communications_title {
    return Intl.message(
      'Communications',
      name: 'communications_title',
      desc: '',
      args: [],
    );
  }

  /// `Manage notifications and blocking`
  String get communications_sub_title {
    return Intl.message(
      'Manage notifications and blocking',
      name: 'communications_sub_title',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contact_us_title {
    return Intl.message(
      'Contact Us',
      name: 'contact_us_title',
      desc: '',
      args: [],
    );
  }

  /// `Get in touch with Swag support`
  String get contact_us_sub_title {
    return Intl.message(
      'Get in touch with Swag support',
      name: 'contact_us_sub_title',
      desc: '',
      args: [],
    );
  }

  /// `Help Center`
  String get help_center_title {
    return Intl.message(
      'Help Center',
      name: 'help_center_title',
      desc: '',
      args: [],
    );
  }

  /// `See our FAQS, Terms and Privacy`
  String get help_center_sub_title {
    return Intl.message(
      'See our FAQS, Terms and Privacy',
      name: 'help_center_sub_title',
      desc: '',
      args: [],
    );
  }

  /// `PREMIUM MEMBER`
  String get premium_member_title {
    return Intl.message(
      'PREMIUM MEMBER',
      name: 'premium_member_title',
      desc: '',
      args: [],
    );
  }

  /// `Atomic Drop Payments`
  String get premium_memberatomic_drop_payments_title {
    return Intl.message(
      'Atomic Drop Payments',
      name: 'premium_memberatomic_drop_payments_title',
      desc: '',
      args: [],
    );
  }

  /// `Manage Cards`
  String get premium_memberatomic_drop_payments_sub_title {
    return Intl.message(
      'Manage Cards',
      name: 'premium_memberatomic_drop_payments_sub_title',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Address`
  String get shipping_address_title {
    return Intl.message(
      'Shipping Address',
      name: 'shipping_address_title',
      desc: '',
      args: [],
    );
  }

  /// `Peer to Peer Payment Options`
  String get peer_to_peer_payment_options_title {
    return Intl.message(
      'Peer to Peer Payment Options',
      name: 'peer_to_peer_payment_options_title',
      desc: '',
      args: [],
    );
  }

  /// `Venmo, CashApp, PayPal`
  String get peer_to_peer_payment_options_sub_title {
    return Intl.message(
      'Venmo, CashApp, PayPal',
      name: 'peer_to_peer_payment_options_sub_title',
      desc: '',
      args: [],
    );
  }

  /// `KYC`
  String get kyc_title {
    return Intl.message(
      'KYC',
      name: 'kyc_title',
      desc: '',
      args: [],
    );
  }

  /// `Subscription`
  String get subscription_title {
    return Intl.message(
      'Subscription',
      name: 'subscription_title',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get active {
    return Intl.message(
      'Active',
      name: 'active',
      desc: '',
      args: [],
    );
  }

  /// `Expired`
  String get expired {
    return Intl.message(
      'Expired',
      name: 'expired',
      desc: '',
      args: [],
    );
  }

  /// `Add New Address`
  String get add_new_address {
    return Intl.message(
      'Add New Address',
      name: 'add_new_address',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get remove_address {
    return Intl.message(
      'Remove',
      name: 'remove_address',
      desc: '',
      args: [],
    );
  }

  /// `Edit Address`
  String get edit_address {
    return Intl.message(
      'Edit Address',
      name: 'edit_address',
      desc: '',
      args: [],
    );
  }

  /// `Venmo`
  String get venmo {
    return Intl.message(
      'Venmo',
      name: 'venmo',
      desc: '',
      args: [],
    );
  }

  /// `CashApp`
  String get cash_app {
    return Intl.message(
      'CashApp',
      name: 'cash_app',
      desc: '',
      args: [],
    );
  }

  /// `PayPal`
  String get payPal {
    return Intl.message(
      'PayPal',
      name: 'payPal',
      desc: '',
      args: [],
    );
  }

  /// `SAVE`
  String get save_btn {
    return Intl.message(
      'SAVE',
      name: 'save_btn',
      desc: '',
      args: [],
    );
  }

  /// `Please enter and confirm your \nVenmo username.`
  String get venmo_sub_title {
    return Intl.message(
      'Please enter and confirm your \nVenmo username.',
      name: 'venmo_sub_title',
      desc: '',
      args: [],
    );
  }

  /// `Please enter and confirm your PayPal email`
  String get payPal_sub_title {
    return Intl.message(
      'Please enter and confirm your PayPal email',
      name: 'payPal_sub_title',
      desc: '',
      args: [],
    );
  }

  /// `Please enter and confirm your \nCashApp cashtag`
  String get cash_app_sub_title {
    return Intl.message(
      'Please enter and confirm your \nCashApp cashtag',
      name: 'cash_app_sub_title',
      desc: '',
      args: [],
    );
  }

  /// `NFT WALLET`
  String get nft_wallet_page_title {
    return Intl.message(
      'NFT WALLET',
      name: 'nft_wallet_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Connect`
  String get nft_wallet_connect {
    return Intl.message(
      'Connect',
      name: 'nft_wallet_connect',
      desc: '',
      args: [],
    );
  }

  /// `Wallet`
  String get nft_wallet_wallet {
    return Intl.message(
      'Wallet',
      name: 'nft_wallet_wallet',
      desc: '',
      args: [],
    );
  }

  /// `Add New Wallet`
  String get nft_wallet_add_wallet {
    return Intl.message(
      'Add New Wallet',
      name: 'nft_wallet_add_wallet',
      desc: '',
      args: [],
    );
  }

  /// `@Venmo username`
  String get input_venmo {
    return Intl.message(
      '@Venmo username',
      name: 'input_venmo',
      desc: '',
      args: [],
    );
  }

  /// `$cashtag`
  String get input_cash_app {
    return Intl.message(
      '\$cashtag',
      name: 'input_cash_app',
      desc: '',
      args: [],
    );
  }

  /// `Must 20 characters or less, min 1 letter, no spaces`
  String get input_cash_app_ivalid {
    return Intl.message(
      'Must 20 characters or less, min 1 letter, no spaces',
      name: 'input_cash_app_ivalid',
      desc: '',
      args: [],
    );
  }

  /// `Must be 5-30 characters, no spaces or special characters except - or _`
  String get input_venmo_ivalid {
    return Intl.message(
      'Must be 5-30 characters, no spaces or special characters except - or _',
      name: 'input_venmo_ivalid',
      desc: '',
      args: [],
    );
  }

  /// `Complete Purchase`
  String get complete_purchase_title {
    return Intl.message(
      'Complete Purchase',
      name: 'complete_purchase_title',
      desc: '',
      args: [],
    );
  }

  /// `We will connect you with the seller to complete this purchase. Please select how you like to pay for this item? `
  String get complete_purchase_sub_title {
    return Intl.message(
      'We will connect you with the seller to complete this purchase. Please select how you like to pay for this item? ',
      name: 'complete_purchase_sub_title',
      desc: '',
      args: [],
    );
  }

  /// `Payment Type`
  String get payment_types {
    return Intl.message(
      'Payment Type',
      name: 'payment_types',
      desc: '',
      args: [],
    );
  }

  /// `Please confirm or update your shipping address for this item to be shipped.`
  String get shipped_input_title {
    return Intl.message(
      'Please confirm or update your shipping address for this item to be shipped.',
      name: 'shipped_input_title',
      desc: '',
      args: [],
    );
  }

  /// `Save address to your account`
  String get save_address {
    return Intl.message(
      'Save address to your account',
      name: 'save_address',
      desc: '',
      args: [],
    );
  }

  /// `Please enter and confirm your shipping information.`
  String get add_address_title {
    return Intl.message(
      'Please enter and confirm your shipping information.',
      name: 'add_address_title',
      desc: '',
      args: [],
    );
  }

  /// `FROM`
  String get from {
    return Intl.message(
      'FROM',
      name: 'from',
      desc: '',
      args: [],
    );
  }

  /// `Accepted Payment Types`
  String get accepted_payment_types {
    return Intl.message(
      'Accepted Payment Types',
      name: 'accepted_payment_types',
      desc: '',
      args: [],
    );
  }

  /// `Setup Payment`
  String get setup_payment {
    return Intl.message(
      'Setup Payment',
      name: 'setup_payment',
      desc: '',
      args: [],
    );
  }

  /// `You must setup at least one form of payment before you can list an item. `
  String get setup_payment_sub_title {
    return Intl.message(
      'You must setup at least one form of payment before you can list an item. ',
      name: 'setup_payment_sub_title',
      desc: '',
      args: [],
    );
  }

  /// `Payment Types Accepted`
  String get payment_types_accepted {
    return Intl.message(
      'Payment Types Accepted',
      name: 'payment_types_accepted',
      desc: '',
      args: [],
    );
  }

  /// `You must select at least one form of payment. You can manage these payment types in your settings.`
  String get help_payment {
    return Intl.message(
      'You must select at least one form of payment. You can manage these payment types in your settings.',
      name: 'help_payment',
      desc: '',
      args: [],
    );
  }

  /// `Sale pending`
  String get sale_pending_btn {
    return Intl.message(
      'Sale pending',
      name: 'sale_pending_btn',
      desc: '',
      args: [],
    );
  }

  /// `COMPLETE SALE`
  String get complete_sale_btn {
    return Intl.message(
      'COMPLETE SALE',
      name: 'complete_sale_btn',
      desc: '',
      args: [],
    );
  }

  /// `CANCEL SALE`
  String get cancel_sale_btn {
    return Intl.message(
      'CANCEL SALE',
      name: 'cancel_sale_btn',
      desc: '',
      args: [],
    );
  }

  /// `has agreed to purchase your`
  String get seller_buy_message {
    return Intl.message(
      'has agreed to purchase your',
      name: 'seller_buy_message',
      desc: '',
      args: [],
    );
  }

  /// `No Purchase History yet`
  String get no_purchase_history_yet {
    return Intl.message(
      'No Purchase History yet',
      name: 'no_purchase_history_yet',
      desc: '',
      args: [],
    );
  }

  /// `{number} Items`
  String items_purchased(Object number) {
    return Intl.message(
      '$number Items',
      name: 'items_purchased',
      desc: '',
      args: [number],
    );
  }

  /// `PURCHASE`
  String get purchase_history_detail_title {
    return Intl.message(
      'PURCHASE',
      name: 'purchase_history_detail_title',
      desc: '',
      args: [],
    );
  }

  /// `Order number: {orderNumber}`
  String purchase_order_number(Object orderNumber) {
    return Intl.message(
      'Order number: $orderNumber',
      name: 'purchase_order_number',
      desc: '',
      args: [orderNumber],
    );
  }

  /// `TOTAL`
  String get purchase_total_item {
    return Intl.message(
      'TOTAL',
      name: 'purchase_total_item',
      desc: '',
      args: [],
    );
  }

  /// `TOTAL=${totalPrice}`
  String purchase_payment_card_total(Object totalPrice) {
    return Intl.message(
      'TOTAL=\$$totalPrice',
      name: 'purchase_payment_card_total',
      desc: '',
      args: [totalPrice],
    );
  }

  /// `Paid via {paymentMethod}`
  String purchase_payment_card_via(Object paymentMethod) {
    return Intl.message(
      'Paid via $paymentMethod',
      name: 'purchase_payment_card_via',
      desc: '',
      args: [paymentMethod],
    );
  }

  /// `Ship to:`
  String get purchase_ship_to {
    return Intl.message(
      'Ship to:',
      name: 'purchase_ship_to',
      desc: '',
      args: [],
    );
  }

  /// `Tracking number:\n{trackingNumber}`
  String purchase_tracking_number(Object trackingNumber) {
    return Intl.message(
      'Tracking number:\n$trackingNumber',
      name: 'purchase_tracking_number',
      desc: '',
      args: [trackingNumber],
    );
  }

  /// `Pending shipping`
  String get purchase_pending_shipping {
    return Intl.message(
      'Pending shipping',
      name: 'purchase_pending_shipping',
      desc: '',
      args: [],
    );
  }

  /// `Item shipped`
  String get purchase_item_shipped {
    return Intl.message(
      'Item shipped',
      name: 'purchase_item_shipped',
      desc: '',
      args: [],
    );
  }

  /// `Item purchased from`
  String get purchase_item_purchased_from {
    return Intl.message(
      'Item purchased from',
      name: 'purchase_item_purchased_from',
      desc: '',
      args: [],
    );
  }

  /// `PAID`
  String get purchase_paid_status {
    return Intl.message(
      'PAID',
      name: 'purchase_paid_status',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get chatChat {
    return Intl.message(
      'Chat',
      name: 'chatChat',
      desc: '',
      args: [],
    );
  }

  /// `SWAG`
  String get chatModeratorName {
    return Intl.message(
      'SWAG',
      name: 'chatModeratorName',
      desc: '',
      args: [],
    );
  }

  /// `Enter message`
  String get chatInputHintText {
    return Intl.message(
      'Enter message',
      name: 'chatInputHintText',
      desc: '',
      args: [],
    );
  }

  /// `No previous messages`
  String get chatNoMessages {
    return Intl.message(
      'No previous messages',
      name: 'chatNoMessages',
      desc: '',
      args: [],
    );
  }

  /// `Typing...`
  String get chatTyping {
    return Intl.message(
      'Typing...',
      name: 'chatTyping',
      desc: '',
      args: [],
    );
  }

  /// `Error loading the file`
  String get chatErrorFile {
    return Intl.message(
      'Error loading the file',
      name: 'chatErrorFile',
      desc: '',
      args: [],
    );
  }

  /// `Loading File...`
  String get chatLoadingFile {
    return Intl.message(
      'Loading File...',
      name: 'chatLoadingFile',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get chatToday {
    return Intl.message(
      'Today',
      name: 'chatToday',
      desc: '',
      args: [],
    );
  }

  /// `New message from {sender}`
  String chatMessageFrom(Object sender) {
    return Intl.message(
      'New message from $sender',
      name: 'chatMessageFrom',
      desc: '',
      args: [sender],
    );
  }

  /// `Swagg Admin`
  String get chatSwaggAdmin {
    return Intl.message(
      'Swagg Admin',
      name: 'chatSwaggAdmin',
      desc: '',
      args: [],
    );
  }

  /// `SWAG`
  String get chatSwagg {
    return Intl.message(
      'SWAG',
      name: 'chatSwagg',
      desc: '',
      args: [],
    );
  }

  /// `Add Swag Admin`
  String get chatAddSwagAdmin {
    return Intl.message(
      'Add Swag Admin',
      name: 'chatAddSwagAdmin',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you would like to add a swag member to the chat? The admin will be able to see the complete chat history to help settle any disputes. `
  String get chatAddSwagAdminContent {
    return Intl.message(
      'Are you sure you would like to add a swag member to the chat? The admin will be able to see the complete chat history to help settle any disputes. ',
      name: 'chatAddSwagAdminContent',
      desc: '',
      args: [],
    );
  }

  /// `Add Swag Member`
  String get chatAddSwagAdminButton {
    return Intl.message(
      'Add Swag Member',
      name: 'chatAddSwagAdminButton',
      desc: '',
      args: [],
    );
  }

  /// `Item sold`
  String get chatBannerItemSold {
    return Intl.message(
      'Item sold',
      name: 'chatBannerItemSold',
      desc: '',
      args: [],
    );
  }

  /// `@{userName} will paying using `
  String chatBannerWillPay(Object userName) {
    return Intl.message(
      '@$userName will paying using ',
      name: 'chatBannerWillPay',
      desc: '',
      args: [userName],
    );
  }

  /// `@{userName} has agreed to purchase your Golden King Cover`
  String chatBannerTitle(Object userName) {
    return Intl.message(
      '@$userName has agreed to purchase your Golden King Cover',
      name: 'chatBannerTitle',
      desc: '',
      args: [userName],
    );
  }

  /// `@{sellerUserName} here is @{myUserName}'s {paymnetMethod}'s information to send payment - {rate} \n\n{paymentUser}\n\nOnce payment is made please click the confirmation button below`
  String chatCardConfirmPaymentBuyer(Object sellerUserName, Object myUserName,
      Object paymnetMethod, Object rate, Object paymentUser) {
    return Intl.message(
      '@$sellerUserName here is @$myUserName\'s $paymnetMethod\'s information to send payment - $rate \n\n$paymentUser\n\nOnce payment is made please click the confirmation button below',
      name: 'chatCardConfirmPaymentBuyer',
      desc: '',
      args: [sellerUserName, myUserName, paymnetMethod, rate, paymentUser],
    );
  }

  /// `@{sellerUserName} here is @{myUserName}'s {paymnetMethod}'s information to send payment - {rate} \n\n{paymentUser}`
  String chatCardConfirmPaymentSeller(Object sellerUserName, Object myUserName,
      Object paymnetMethod, Object rate, Object paymentUser) {
    return Intl.message(
      '@$sellerUserName here is @$myUserName\'s $paymnetMethod\'s information to send payment - $rate \n\n$paymentUser',
      name: 'chatCardConfirmPaymentSeller',
      desc: '',
      args: [sellerUserName, myUserName, paymnetMethod, rate, paymentUser],
    );
  }

  /// `@{buyerUserName} indicated he made payment. Please check your {paymnetMethod} account and click the button below to confirm payment was received`
  String chatCardPaymentReceivedSeller(
      Object buyerUserName, Object paymnetMethod) {
    return Intl.message(
      '@$buyerUserName indicated he made payment. Please check your $paymnetMethod account and click the button below to confirm payment was received',
      name: 'chatCardPaymentReceivedSeller',
      desc: '',
      args: [buyerUserName, paymnetMethod],
    );
  }

  /// `Payment Confirmation @{buyerUserName} indicated they made payment`
  String chatPaymentSendBuyer(Object buyerUserName) {
    return Intl.message(
      'Payment Confirmation @$buyerUserName indicated they made payment',
      name: 'chatPaymentSendBuyer',
      desc: '',
      args: [buyerUserName],
    );
  }

  /// `Payment Information`
  String get chatCardPaymetInformation {
    return Intl.message(
      'Payment Information',
      name: 'chatCardPaymetInformation',
      desc: '',
      args: [],
    );
  }

  /// `Payment Confirmation`
  String get chatCardPaymetConfirmation {
    return Intl.message(
      'Payment Confirmation',
      name: 'chatCardPaymetConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Information`
  String get chatCardShippingInformation {
    return Intl.message(
      'Shipping Information',
      name: 'chatCardShippingInformation',
      desc: '',
      args: [],
    );
  }

  /// `Add tracking number here`
  String get chatCardShippingInformationInputHint {
    return Intl.message(
      'Add tracking number here',
      name: 'chatCardShippingInformationInputHint',
      desc: '',
      args: [],
    );
  }

  /// `Payment Sent`
  String get chatCardButtonPaymentSent {
    return Intl.message(
      'Payment Sent',
      name: 'chatCardButtonPaymentSent',
      desc: '',
      args: [],
    );
  }

  /// `Payment Received`
  String get chatCardButtonPaymentReceived {
    return Intl.message(
      'Payment Received',
      name: 'chatCardButtonPaymentReceived',
      desc: '',
      args: [],
    );
  }

  /// `Shipment Sent`
  String get chatCardButtonShipmentSent {
    return Intl.message(
      'Shipment Sent',
      name: 'chatCardButtonShipmentSent',
      desc: '',
      args: [],
    );
  }

  /// `You can use this chat to adjust any information necessary to complete the sale. If you need 3rd party assistance click the icon above and request an admin to join the chat. NOTE: If payment is not received in 12 hours the listings can be cancelled `
  String get chatCommenceMessage {
    return Intl.message(
      'You can use this chat to adjust any information necessary to complete the sale. If you need 3rd party assistance click the icon above and request an admin to join the chat. NOTE: If payment is not received in 12 hours the listings can be cancelled ',
      name: 'chatCommenceMessage',
      desc: '',
      args: [],
    );
  }

  /// `@{sellerUserName} has confirmed that payment has been received`
  String chatConfirmPaymentMessage(Object sellerUserName) {
    return Intl.message(
      '@$sellerUserName has confirmed that payment has been received',
      name: 'chatConfirmPaymentMessage',
      desc: '',
      args: [sellerUserName],
    );
  }

  /// `@{sellerUserName} here is the shipping address to ship this item\n\n{buyerName} {buyerLastName}\n{address}, {address2} \n{city}, {state}, {zipCode}, {country}`
  String chatConfirmShipMessage(
      Object sellerUserName,
      Object buyerName,
      Object buyerLastName,
      Object address,
      Object address2,
      Object city,
      Object state,
      Object zipCode,
      Object country) {
    return Intl.message(
      '@$sellerUserName here is the shipping address to ship this item\n\n$buyerName $buyerLastName\n$address, $address2 \n$city, $state, $zipCode, $country',
      name: 'chatConfirmShipMessage',
      desc: '',
      args: [
        sellerUserName,
        buyerName,
        buyerLastName,
        address,
        address2,
        city,
        state,
        zipCode,
        country
      ],
    );
  }

  /// `@{sellerUserName} has ship the item. Here is the tracking number\n\n{trackingNumber}`
  String chatShippedMessage(Object sellerUserName, Object trackingNumber) {
    return Intl.message(
      '@$sellerUserName has ship the item. Here is the tracking number\n\n$trackingNumber',
      name: 'chatShippedMessage',
      desc: '',
      args: [sellerUserName, trackingNumber],
    );
  }

  /// `The seller has chosen to \ncanceled this transaction.`
  String get chatCancelPurchaseMessage {
    return Intl.message(
      'The seller has chosen to \ncanceled this transaction.',
      name: 'chatCancelPurchaseMessage',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get chatsHeader {
    return Intl.message(
      'Chat',
      name: 'chatsHeader',
      desc: '',
      args: [],
    );
  }

  /// `{chatsNumber} Unread`
  String chatsUnreadMessages(Object chatsNumber) {
    return Intl.message(
      '$chatsNumber Unread',
      name: 'chatsUnreadMessages',
      desc: '',
      args: [chatsNumber],
    );
  }

  /// `ALERTS & NOTIFICATIONS`
  String get alert_center_title {
    return Intl.message(
      'ALERTS & NOTIFICATIONS',
      name: 'alert_center_title',
      desc: '',
      args: [],
    );
  }

  /// `Unread`
  String get unread {
    return Intl.message(
      'Unread',
      name: 'unread',
      desc: '',
      args: [],
    );
  }

  /// `Pending Sale`
  String get pending_sale_btn {
    return Intl.message(
      'Pending Sale',
      name: 'pending_sale_btn',
      desc: '',
      args: [],
    );
  }

  /// `PayPal`
  String get paymetPaypal {
    return Intl.message(
      'PayPal',
      name: 'paymetPaypal',
      desc: '',
      args: [],
    );
  }

  /// `Venmo`
  String get paymetVenmo {
    return Intl.message(
      'Venmo',
      name: 'paymetVenmo',
      desc: '',
      args: [],
    );
  }

  /// `CashApp`
  String get paymetCashApp {
    return Intl.message(
      'CashApp',
      name: 'paymetCashApp',
      desc: '',
      args: [],
    );
  }

  /// `CANCEL SALE`
  String get cancel_sale {
    return Intl.message(
      'CANCEL SALE',
      name: 'cancel_sale',
      desc: '',
      args: [],
    );
  }

  /// `Please select the reason you are canceling this sale.`
  String get cancel_sale_description {
    return Intl.message(
      'Please select the reason you are canceling this sale.',
      name: 'cancel_sale_description',
      desc: '',
      args: [],
    );
  }

  /// `Reason required`
  String get reason_required {
    return Intl.message(
      'Reason required',
      name: 'reason_required',
      desc: '',
      args: [],
    );
  }

  /// `Upgrade your subscription to see the full sales history plus much more!`
  String get paywall_title {
    return Intl.message(
      'Upgrade your subscription to see the full sales history plus much more!',
      name: 'paywall_title',
      desc: '',
      args: [],
    );
  }

  /// `Unlimited listings `
  String get paywall_condition1 {
    return Intl.message(
      'Unlimited listings ',
      name: 'paywall_condition1',
      desc: '',
      args: [],
    );
  }

  /// `See items price history`
  String get paywall_condition2 {
    return Intl.message(
      'See items price history',
      name: 'paywall_condition2',
      desc: '',
      args: [],
    );
  }

  /// `Track your portfolio value`
  String get paywall_condition3 {
    return Intl.message(
      'Track your portfolio value',
      name: 'paywall_condition3',
      desc: '',
      args: [],
    );
  }

  /// `Make offers on items`
  String get paywall_condition4 {
    return Intl.message(
      'Make offers on items',
      name: 'paywall_condition4',
      desc: '',
      args: [],
    );
  }

  /// `Verified user badge`
  String get paywall_condition5 {
    return Intl.message(
      'Verified user badge',
      name: 'paywall_condition5',
      desc: '',
      args: [],
    );
  }

  /// `$99.99 per year`
  String get paywall_price_per_year {
    return Intl.message(
      '\$99.99 per year',
      name: 'paywall_price_per_year',
      desc: '',
      args: [],
    );
  }

  /// `($8.30 per month)`
  String get paywall_price_per_month {
    return Intl.message(
      '(\$8.30 per month)',
      name: 'paywall_price_per_month',
      desc: '',
      args: [],
    );
  }

  /// `OR $9.99 per month`
  String get paywall_or_price_month {
    return Intl.message(
      'OR \$9.99 per month',
      name: 'paywall_or_price_month',
      desc: '',
      args: [],
    );
  }

  /// `SAVE 20%`
  String get paywall_discount {
    return Intl.message(
      'SAVE 20%',
      name: 'paywall_discount',
      desc: '',
      args: [],
    );
  }

  /// `GET 30 Days free`
  String get paywall_free_trial {
    return Intl.message(
      'GET 30 Days free',
      name: 'paywall_free_trial',
      desc: '',
      args: [],
    );
  }

  /// `Sign up for Premium`
  String get paywall_sign_up_premium {
    return Intl.message(
      'Sign up for Premium',
      name: 'paywall_sign_up_premium',
      desc: '',
      args: [],
    );
  }

  /// `SWAG`
  String get paywall_splash_title {
    return Intl.message(
      'SWAG',
      name: 'paywall_splash_title',
      desc: '',
      args: [],
    );
  }

  /// `BECOME A MEMBER`
  String get paywall_splash_subtitle {
    return Intl.message(
      'BECOME A MEMBER',
      name: 'paywall_splash_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Swag Premium`
  String get paywall_splash_premium_subtitle {
    return Intl.message(
      'Swag Premium',
      name: 'paywall_splash_premium_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `List items for sale`
  String get paywall_splash_condition1 {
    return Intl.message(
      'List items for sale',
      name: 'paywall_splash_condition1',
      desc: '',
      args: [],
    );
  }

  /// `Increase odds on hitting drops`
  String get paywall_splash_condition2 {
    return Intl.message(
      'Increase odds on hitting drops',
      name: 'paywall_splash_condition2',
      desc: '',
      args: [],
    );
  }

  /// `See product sales history`
  String get paywall_splash_condition3 {
    return Intl.message(
      'See product sales history',
      name: 'paywall_splash_condition3',
      desc: '',
      args: [],
    );
  }

  /// `Track your collection value`
  String get paywall_splash_condition4 {
    return Intl.message(
      'Track your collection value',
      name: 'paywall_splash_condition4',
      desc: '',
      args: [],
    );
  }

  /// `Get notified when items are listed`
  String get paywall_splash_condition5 {
    return Intl.message(
      'Get notified when items are listed',
      name: 'paywall_splash_condition5',
      desc: '',
      args: [],
    );
  }

  /// `No thanks`
  String get paywall_splash_decline {
    return Intl.message(
      'No thanks',
      name: 'paywall_splash_decline',
      desc: '',
      args: [],
    );
  }

  /// `User problem creating account in the Swag App`
  String get user_problem_creating_account_in_the_swag_app {
    return Intl.message(
      'User problem creating account in the Swag App',
      name: 'user_problem_creating_account_in_the_swag_app',
      desc: '',
      args: [],
    );
  }

  /// `User problem signing into the Swag App`
  String get user_problem_signing_into_the_swag_app {
    return Intl.message(
      'User problem signing into the Swag App',
      name: 'user_problem_signing_into_the_swag_app',
      desc: '',
      args: [],
    );
  }

  /// `Problems signing in? `
  String get problems_signing_in {
    return Intl.message(
      'Problems signing in? ',
      name: 'problems_signing_in',
      desc: '',
      args: [],
    );
  }

  /// `Problems creating account? `
  String get problems_creating_an_account {
    return Intl.message(
      'Problems creating account? ',
      name: 'problems_creating_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Contact us`
  String get contact_us {
    return Intl.message(
      'Contact us',
      name: 'contact_us',
      desc: '',
      args: [],
    );
  }

  /// `Mail was saved to draft`
  String get mail_was_saved_to_draft {
    return Intl.message(
      'Mail was saved to draft',
      name: 'mail_was_saved_to_draft',
      desc: '',
      args: [],
    );
  }

  /// `Mail was sent`
  String get mail_was_sent {
    return Intl.message(
      'Mail was sent',
      name: 'mail_was_sent',
      desc: '',
      args: [],
    );
  }

  /// `Mail was cancelled`
  String get mail_was_cancelled {
    return Intl.message(
      'Mail was cancelled',
      name: 'mail_was_cancelled',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get message {
    return Intl.message(
      'Message',
      name: 'message',
      desc: '',
      args: [],
    );
  }

  /// `No email app available`
  String get no_email_app_available {
    return Intl.message(
      'No email app available',
      name: 'no_email_app_available',
      desc: '',
      args: [],
    );
  }

  /// `Swag app support request`
  String get swag_app_support_request {
    return Intl.message(
      'Swag app support request',
      name: 'swag_app_support_request',
      desc: '',
      args: [],
    );
  }

  /// `Did you get it?`
  String get delivered_title {
    return Intl.message(
      'Did you get it?',
      name: 'delivered_title',
      desc: '',
      args: [],
    );
  }

  /// `It’s been 7 days since you purchased the Gold King Cover from @{userName}. We want to know if you received your item yet?`
  String delivered_sub_title(Object userName) {
    return Intl.message(
      'It’s been 7 days since you purchased the Gold King Cover from @$userName. We want to know if you received your item yet?',
      name: 'delivered_sub_title',
      desc: '',
      args: [userName],
    );
  }

  /// `YES`
  String get delivered_yes {
    return Intl.message(
      'YES',
      name: 'delivered_yes',
      desc: '',
      args: [],
    );
  }

  /// `NOT YET`
  String get delivered_not_yes {
    return Intl.message(
      'NOT YET',
      name: 'delivered_not_yes',
      desc: '',
      args: [],
    );
  }

  /// `Sorry you’re still waiting! We will \ncheck back with you in a few days.`
  String get delivered_not_yet_alert {
    return Intl.message(
      'Sorry you’re still waiting! We will \ncheck back with you in a few days.',
      name: 'delivered_not_yet_alert',
      desc: '',
      args: [],
    );
  }

  /// `{buyerUserName} has still not received this item. {sellerUserName} can you please provide an update on shipping? Thank you.`
  String notDeliveredItemChatMessage(
      Object buyerUserName, Object sellerUserName) {
    return Intl.message(
      '$buyerUserName has still not received this item. $sellerUserName can you please provide an update on shipping? Thank you.',
      name: 'notDeliveredItemChatMessage',
      desc: '',
      args: [buyerUserName, sellerUserName],
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
