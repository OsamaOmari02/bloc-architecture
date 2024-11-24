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

class AppLocalization {
  AppLocalization();

  static AppLocalization? _current;

  static AppLocalization get current {
    assert(_current != null,
        'No instance of AppLocalization was loaded. Try to initialize the AppLocalization delegate before accessing AppLocalization.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalization> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalization();
      AppLocalization._current = instance;

      return instance;
    });
  }

  static AppLocalization of(BuildContext context) {
    final instance = AppLocalization.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalization present in the widget tree. Did you add AppLocalization.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalization? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }

  /// `Sign in`
  String get signIn {
    return Intl.message(
      'Sign in',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Forget password`
  String get forgetPassword {
    return Intl.message(
      'Forget password',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forget password?`
  String get didYouForgetPassword {
    return Intl.message(
      'Forget password?',
      name: 'didYouForgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Verification`
  String get verification {
    return Intl.message(
      'Verification',
      name: 'verification',
      desc: '',
      args: [],
    );
  }

  /// `Dear customer, please enter the verification code sent to your email address.`
  String get enterVerificationCodeSent {
    return Intl.message(
      'Dear customer, please enter the verification code sent to your email address.',
      name: 'enterVerificationCodeSent',
      desc: '',
      args: [],
    );
  }

  /// `Didn't receive code?`
  String get didntReceiveCode {
    return Intl.message(
      'Didn\'t receive code?',
      name: 'didntReceiveCode',
      desc: '',
      args: [],
    );
  }

  /// `Resend Code`
  String get resendCode {
    return Intl.message(
      'Resend Code',
      name: 'resendCode',
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

  /// `Continue`
  String get continueText {
    return Intl.message(
      'Continue',
      name: 'continueText',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dontHaveAnAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dontHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signUp {
    return Intl.message(
      'Sign up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Birthday`
  String get birthday {
    return Intl.message(
      'Birthday',
      name: 'birthday',
      desc: '',
      args: [],
    );
  }

  /// `Date of birth`
  String get dateOfBirth {
    return Intl.message(
      'Date of birth',
      name: 'dateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `Enter date of birth`
  String get enterDateOfBirth {
    return Intl.message(
      'Enter date of birth',
      name: 'enterDateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message(
      'or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Login with Facebook`
  String get loginWithFacebook {
    return Intl.message(
      'Login with Facebook',
      name: 'loginWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `Login with Google`
  String get loginWithGoogle {
    return Intl.message(
      'Login with Google',
      name: 'loginWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Login with Apple`
  String get loginWithApple {
    return Intl.message(
      'Login with Apple',
      name: 'loginWithApple',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Dr Uber`
  String get onboarding1Title {
    return Intl.message(
      'Welcome to Dr Uber',
      name: 'onboarding1Title',
      desc: '',
      args: [],
    );
  }

  /// `How It Works`
  String get onboarding2Title {
    return Intl.message(
      'How It Works',
      name: 'onboarding2Title',
      desc: '',
      args: [],
    );
  }

  /// `Start Your First Request`
  String get onboarding3Title {
    return Intl.message(
      'Start Your First Request',
      name: 'onboarding3Title',
      desc: '',
      args: [],
    );
  }

  /// `Instantly connect with certified doctors at your convenience`
  String get onboarding1Body {
    return Intl.message(
      'Instantly connect with certified doctors at your convenience',
      name: 'onboarding1Body',
      desc: '',
      args: [],
    );
  }

  /// `Accept request you need to help and start now`
  String get onboarding2Body {
    return Intl.message(
      'Accept request you need to help and start now',
      name: 'onboarding2Body',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy our service completely free of charge`
  String get onboarding3Body {
    return Intl.message(
      'Enjoy our service completely free of charge',
      name: 'onboarding3Body',
      desc: '',
      args: [],
    );
  }

  /// `Eve`
  String get appTitle {
    return Intl.message(
      'Eve',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Welcome To`
  String get welcomeToApp {
    return Intl.message(
      'Welcome To',
      name: 'welcomeToApp',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Email or name or phone number`
  String get credentials {
    return Intl.message(
      'Email or name or phone number',
      name: 'credentials',
      desc: '',
      args: [],
    );
  }

  /// `gender`
  String get gender {
    return Intl.message(
      'gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message(
      'Male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get female {
    return Intl.message(
      'Female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account ?`
  String get haveAccount {
    return Intl.message(
      'Already have an account ?',
      name: 'haveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name`
  String get enterYourName {
    return Intl.message(
      'Enter your name',
      name: 'enterYourName',
      desc: '',
      args: [],
    );
  }

  /// `MM/DD/YYYY`
  String get birthdayFormat {
    return Intl.message(
      'MM/DD/YYYY',
      name: 'birthdayFormat',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number`
  String get enterYourPhoneNumber {
    return Intl.message(
      'Enter your phone number',
      name: 'enterYourPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forgotPasswordCaps {
    return Intl.message(
      'Forgot Password',
      name: 'forgotPasswordCaps',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your Email and you will receive a verification link.`
  String get enterEmailToResetPassword {
    return Intl.message(
      'Please enter your Email and you will receive a verification link.',
      name: 'enterEmailToResetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get confirmPassword {
    return Intl.message(
      'Confirm password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Market Corner`
  String get marketCorner {
    return Intl.message(
      'Market Corner',
      name: 'marketCorner',
      desc: '',
      args: [],
    );
  }

  /// `Total Services`
  String get totalServices {
    return Intl.message(
      'Total Services',
      name: 'totalServices',
      desc: '',
      args: [],
    );
  }

  /// `My Cart`
  String get myCart {
    return Intl.message(
      'My Cart',
      name: 'myCart',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message(
      'Checkout',
      name: 'checkout',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get searchCaps {
    return Intl.message(
      'Search',
      name: 'searchCaps',
      desc: '',
      args: [],
    );
  }

  /// `search`
  String get search {
    return Intl.message(
      'search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `search here`
  String get searchHere {
    return Intl.message(
      'search here',
      name: 'searchHere',
      desc: '',
      args: [],
    );
  }

  /// `No search results`
  String get noSearchResults {
    return Intl.message(
      'No search results',
      name: 'noSearchResults',
      desc: '',
      args: [],
    );
  }

  /// `Services`
  String get services {
    return Intl.message(
      'Services',
      name: 'services',
      desc: '',
      args: [],
    );
  }

  /// `Services Providers`
  String get servicesProviders {
    return Intl.message(
      'Services Providers',
      name: 'servicesProviders',
      desc: '',
      args: [],
    );
  }

  /// `Online Stores`
  String get onlineStores {
    return Intl.message(
      'Online Stores',
      name: 'onlineStores',
      desc: '',
      args: [],
    );
  }

  /// `Book an appointment`
  String get bookAppointment {
    return Intl.message(
      'Book an appointment',
      name: 'bookAppointment',
      desc: '',
      args: [],
    );
  }

  /// `Appointment date`
  String get appointmentDate {
    return Intl.message(
      'Appointment date',
      name: 'appointmentDate',
      desc: '',
      args: [],
    );
  }

  /// `month`
  String get month {
    return Intl.message(
      'month',
      name: 'month',
      desc: '',
      args: [],
    );
  }

  /// `Available time`
  String get availableTime {
    return Intl.message(
      'Available time',
      name: 'availableTime',
      desc: '',
      args: [],
    );
  }

  /// `Book for`
  String get bookFor {
    return Intl.message(
      'Book for',
      name: 'bookFor',
      desc: '',
      args: [],
    );
  }

  /// `Pick Date First`
  String get pickDateFirst {
    return Intl.message(
      'Pick Date First',
      name: 'pickDateFirst',
      desc: '',
      args: [],
    );
  }

  /// `Enter booking details`
  String get enterBookingDetails {
    return Intl.message(
      'Enter booking details',
      name: 'enterBookingDetails',
      desc: '',
      args: [],
    );
  }

  /// `Total payment`
  String get totalPayment {
    return Intl.message(
      'Total payment',
      name: 'totalPayment',
      desc: '',
      args: [],
    );
  }

  /// `Pay with`
  String get payWith {
    return Intl.message(
      'Pay with',
      name: 'payWith',
      desc: '',
      args: [],
    );
  }

  /// `Cash`
  String get cash {
    return Intl.message(
      'Cash',
      name: 'cash',
      desc: '',
      args: [],
    );
  }

  /// `Credit card`
  String get creditCard {
    return Intl.message(
      'Credit card',
      name: 'creditCard',
      desc: '',
      args: [],
    );
  }

  /// `Book`
  String get book {
    return Intl.message(
      'Book',
      name: 'book',
      desc: '',
      args: [],
    );
  }

  /// `Pick payment method first`
  String get pickPaymentMethodFirst {
    return Intl.message(
      'Pick payment method first',
      name: 'pickPaymentMethodFirst',
      desc: '',
      args: [],
    );
  }

  /// `optional`
  String get optional {
    return Intl.message(
      'optional',
      name: 'optional',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get payment {
    return Intl.message(
      'Payment',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `Card number`
  String get cardNumber {
    return Intl.message(
      'Card number',
      name: 'cardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Expiry date`
  String get expiryDate {
    return Intl.message(
      'Expiry date',
      name: 'expiryDate',
      desc: '',
      args: [],
    );
  }

  /// `Invalid card number`
  String get cardNumberInvalid {
    return Intl.message(
      'Invalid card number',
      name: 'cardNumberInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Enter 3 Digits`
  String get enter3Digits {
    return Intl.message(
      'Enter 3 Digits',
      name: 'enter3Digits',
      desc: '',
      args: [],
    );
  }

  /// `Invalid expiry date`
  String get expiryDateInvalid {
    return Intl.message(
      'Invalid expiry date',
      name: 'expiryDateInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Pay`
  String get pay {
    return Intl.message(
      'Pay',
      name: 'pay',
      desc: '',
      args: [],
    );
  }

  /// `Payment done successfully !`
  String get paymentDone {
    return Intl.message(
      'Payment done successfully !',
      name: 'paymentDone',
      desc: '',
      args: [],
    );
  }

  /// `Back to Market Corner`
  String get backToMarketCorner {
    return Intl.message(
      'Back to Market Corner',
      name: 'backToMarketCorner',
      desc: '',
      args: [],
    );
  }

  /// `Back to Home`
  String get backToHome {
    return Intl.message(
      'Back to Home',
      name: 'backToHome',
      desc: '',
      args: [],
    );
  }

  /// `You have no items yet`
  String get noItemsYet {
    return Intl.message(
      'You have no items yet',
      name: 'noItemsYet',
      desc: '',
      args: [],
    );
  }

  /// `You can't buy from two different stores or providers at once, do you want to start a new shopping cart?`
  String get twoDifferentProvidersOrStores {
    return Intl.message(
      'You can\'t buy from two different stores or providers at once, do you want to start a new shopping cart?',
      name: 'twoDifferentProvidersOrStores',
      desc: '',
      args: [],
    );
  }

  /// `Delivery location`
  String get deliveryLocation {
    return Intl.message(
      'Delivery location',
      name: 'deliveryLocation',
      desc: '',
      args: [],
    );
  }

  /// `search for location`
  String get searchForLocation {
    return Intl.message(
      'search for location',
      name: 'searchForLocation',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Address details`
  String get addressDetails {
    return Intl.message(
      'Address details',
      name: 'addressDetails',
      desc: '',
      args: [],
    );
  }

  /// `Building name`
  String get buildingName {
    return Intl.message(
      'Building name',
      name: 'buildingName',
      desc: '',
      args: [],
    );
  }

  /// `Apt. no.`
  String get apartmentNumber {
    return Intl.message(
      'Apt. no.',
      name: 'apartmentNumber',
      desc: '',
      args: [],
    );
  }

  /// `Floor`
  String get floor {
    return Intl.message(
      'Floor',
      name: 'floor',
      desc: '',
      args: [],
    );
  }

  /// `Street name`
  String get streetName {
    return Intl.message(
      'Street name',
      name: 'streetName',
      desc: '',
      args: [],
    );
  }

  /// `Save address`
  String get saveAddress {
    return Intl.message(
      'Save address',
      name: 'saveAddress',
      desc: '',
      args: [],
    );
  }

  /// `It will be delivered as soon as possible`
  String get willBeDeliveredAsap {
    return Intl.message(
      'It will be delivered as soon as possible',
      name: 'willBeDeliveredAsap',
      desc: '',
      args: [],
    );
  }

  /// `Payment summary`
  String get paymentSummary {
    return Intl.message(
      'Payment summary',
      name: 'paymentSummary',
      desc: '',
      args: [],
    );
  }

  /// `Subtotal`
  String get subtotal {
    return Intl.message(
      'Subtotal',
      name: 'subtotal',
      desc: '',
      args: [],
    );
  }

  /// `Delivery fees`
  String get deliveryFees {
    return Intl.message(
      'Delivery fees',
      name: 'deliveryFees',
      desc: '',
      args: [],
    );
  }

  /// `Total amount`
  String get totalAmount {
    return Intl.message(
      'Total amount',
      name: 'totalAmount',
      desc: '',
      args: [],
    );
  }

  /// `Place order`
  String get placeOrder {
    return Intl.message(
      'Place order',
      name: 'placeOrder',
      desc: '',
      args: [],
    );
  }

  /// `Color`
  String get color {
    return Intl.message(
      'Color',
      name: 'color',
      desc: '',
      args: [],
    );
  }

  /// `Size`
  String get size {
    return Intl.message(
      'Size',
      name: 'size',
      desc: '',
      args: [],
    );
  }

  /// `Specifications`
  String get specifications {
    return Intl.message(
      'Specifications',
      name: 'specifications',
      desc: '',
      args: [],
    );
  }

  /// `Add to cart`
  String get addToCart {
    return Intl.message(
      'Add to cart',
      name: 'addToCart',
      desc: '',
      args: [],
    );
  }

  /// `Pick color first`
  String get pickColorFirst {
    return Intl.message(
      'Pick color first',
      name: 'pickColorFirst',
      desc: '',
      args: [],
    );
  }

  /// `Pick size first`
  String get pickSizeFirst {
    return Intl.message(
      'Pick size first',
      name: 'pickSizeFirst',
      desc: '',
      args: [],
    );
  }

  /// `Product added to cart`
  String get productAddedToCart {
    return Intl.message(
      'Product added to cart',
      name: 'productAddedToCart',
      desc: '',
      args: [],
    );
  }

  /// `You must grant permission from the app settings`
  String get permissionDeniedForever {
    return Intl.message(
      'You must grant permission from the app settings',
      name: 'permissionDeniedForever',
      desc: '',
      args: [],
    );
  }

  /// `Change`
  String get change {
    return Intl.message(
      'Change',
      name: 'change',
      desc: '',
      args: [],
    );
  }

  /// `What's on your mind?`
  String get whatsOnYourMind {
    return Intl.message(
      'What\'s on your mind?',
      name: 'whatsOnYourMind',
      desc: '',
      args: [],
    );
  }

  /// `Likes`
  String get likes {
    return Intl.message(
      'Likes',
      name: 'likes',
      desc: '',
      args: [],
    );
  }

  /// `View all {commentsLength} Comments`
  String viewAllComments(int commentsLength) {
    return Intl.message(
      'View all $commentsLength Comments',
      name: 'viewAllComments',
      desc: '',
      args: [commentsLength],
    );
  }

  /// `There is no posts yet`
  String get noPostsYet {
    return Intl.message(
      'There is no posts yet',
      name: 'noPostsYet',
      desc: '',
      args: [],
    );
  }

  /// `Comments`
  String get comments {
    return Intl.message(
      'Comments',
      name: 'comments',
      desc: '',
      args: [],
    );
  }

  /// `No comments yet`
  String get noCommentsYet {
    return Intl.message(
      'No comments yet',
      name: 'noCommentsYet',
      desc: '',
      args: [],
    );
  }

  /// `Add a comment`
  String get addAComment {
    return Intl.message(
      'Add a comment',
      name: 'addAComment',
      desc: '',
      args: [],
    );
  }

  /// `Comment was added successfully`
  String get addCommentSuccessMessage {
    return Intl.message(
      'Comment was added successfully',
      name: 'addCommentSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `Reply`
  String get reply {
    return Intl.message(
      'Reply',
      name: 'reply',
      desc: '',
      args: [],
    );
  }

  /// `View {repliesLength} more replies`
  String viewMoreReply(num repliesLength) {
    return Intl.message(
      'View $repliesLength more replies',
      name: 'viewMoreReply',
      desc: '',
      args: [repliesLength],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Create post`
  String get createPost {
    return Intl.message(
      'Create post',
      name: 'createPost',
      desc: '',
      args: [],
    );
  }

  /// `Publish`
  String get publish {
    return Intl.message(
      'Publish',
      name: 'publish',
      desc: '',
      args: [],
    );
  }

  /// `Upload images`
  String get uploadImages {
    return Intl.message(
      'Upload images',
      name: 'uploadImages',
      desc: '',
      args: [],
    );
  }

  /// `Upload videos`
  String get uploadVideos {
    return Intl.message(
      'Upload videos',
      name: 'uploadVideos',
      desc: '',
      args: [],
    );
  }

  /// `Follow`
  String get follow {
    return Intl.message(
      'Follow',
      name: 'follow',
      desc: '',
      args: [],
    );
  }

  /// `Unfollow`
  String get unfollow {
    return Intl.message(
      'Unfollow',
      name: 'unfollow',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get messages {
    return Intl.message(
      'Messages',
      name: 'messages',
      desc: '',
      args: [],
    );
  }

  /// `View profile`
  String get viewProfile {
    return Intl.message(
      'View profile',
      name: 'viewProfile',
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

  /// `An error occurred while sending your current location`
  String get couldNotGetMyLocationErrorMessage {
    return Intl.message(
      'An error occurred while sending your current location',
      name: 'couldNotGetMyLocationErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `The post was created successfully`
  String get createPostSuccessMessage {
    return Intl.message(
      'The post was created successfully',
      name: 'createPostSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `Create reel`
  String get createReel {
    return Intl.message(
      'Create reel',
      name: 'createReel',
      desc: '',
      args: [],
    );
  }

  /// `Retake`
  String get retake {
    return Intl.message(
      'Retake',
      name: 'retake',
      desc: '',
      args: [],
    );
  }

  /// `Apply to upload reels`
  String get applyToUploadReels {
    return Intl.message(
      'Apply to upload reels',
      name: 'applyToUploadReels',
      desc: '',
      args: [],
    );
  }

  /// `A professional account allows you to post\n reels that can be seen publicly to everyone\n on the platform`
  String get contentCreatorAccount {
    return Intl.message(
      'A professional account allows you to post\n reels that can be seen publicly to everyone\n on the platform',
      name: 'contentCreatorAccount',
      desc: '',
      args: [],
    );
  }

  /// `Add brand name and location, these information will be shown to your customers. make sure the added correct information.`
  String get brandNameDesc {
    return Intl.message(
      'Add brand name and location, these information will be shown to your customers. make sure the added correct information.',
      name: 'brandNameDesc',
      desc: '',
      args: [],
    );
  }

  /// `First name`
  String get firstName {
    return Intl.message(
      'First name',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Last name`
  String get lastName {
    return Intl.message(
      'Last name',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Brand name`
  String get brandName {
    return Intl.message(
      'Brand name',
      name: 'brandName',
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

  /// `Sub city`
  String get subCity {
    return Intl.message(
      'Sub city',
      name: 'subCity',
      desc: '',
      args: [],
    );
  }

  /// `Frontside national Id`
  String get frontId {
    return Intl.message(
      'Frontside national Id',
      name: 'frontId',
      desc: '',
      args: [],
    );
  }

  /// `Your request has been sent and will notify you by email when approved or rejected`
  String get contentCreatorBottomSheetDesc {
    return Intl.message(
      'Your request has been sent and will notify you by email when approved or rejected',
      name: 'contentCreatorBottomSheetDesc',
      desc: '',
      args: [],
    );
  }

  /// `Successfully submitted`
  String get successfullySubmitted {
    return Intl.message(
      'Successfully submitted',
      name: 'successfullySubmitted',
      desc: '',
      args: [],
    );
  }

  /// `Reattach`
  String get reattach {
    return Intl.message(
      'Reattach',
      name: 'reattach',
      desc: '',
      args: [],
    );
  }

  /// `Backside national Id`
  String get backId {
    return Intl.message(
      'Backside national Id',
      name: 'backId',
      desc: '',
      args: [],
    );
  }

  /// `Attach sample of your work, make sure it's a video sample`
  String get workSample {
    return Intl.message(
      'Attach sample of your work, make sure it\'s a video sample',
      name: 'workSample',
      desc: '',
      args: [],
    );
  }

  /// `Attach file`
  String get attachFile {
    return Intl.message(
      'Attach file',
      name: 'attachFile',
      desc: '',
      args: [],
    );
  }

  /// `browse`
  String get browse {
    return Intl.message(
      'browse',
      name: 'browse',
      desc: '',
      args: [],
    );
  }

  /// `Supports`
  String get supports {
    return Intl.message(
      'Supports',
      name: 'supports',
      desc: '',
      args: [],
    );
  }

  /// `Apply to business account`
  String get applyToBusinessAccount {
    return Intl.message(
      'Apply to business account',
      name: 'applyToBusinessAccount',
      desc: '',
      args: [],
    );
  }

  /// `Upgrade to business account with your store or services and start improving your business`
  String get aboutBusinessAccount {
    return Intl.message(
      'Upgrade to business account with your store or services and start improving your business',
      name: 'aboutBusinessAccount',
      desc: '',
      args: [],
    );
  }

  /// `Industry`
  String get industry {
    return Intl.message(
      'Industry',
      name: 'industry',
      desc: '',
      args: [],
    );
  }

  /// `Business`
  String get business {
    return Intl.message(
      'Business',
      name: 'business',
      desc: '',
      args: [],
    );
  }

  /// `location`
  String get location {
    return Intl.message(
      'location',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Industry of business`
  String get industryOfBusiness {
    return Intl.message(
      'Industry of business',
      name: 'industryOfBusiness',
      desc: '',
      args: [],
    );
  }

  /// `Business account type`
  String get businessAccountType {
    return Intl.message(
      'Business account type',
      name: 'businessAccountType',
      desc: '',
      args: [],
    );
  }

  /// `Your request to become a business account has been sent successfully, check your email the next few days to complete the process`
  String get businessAccountDone {
    return Intl.message(
      'Your request to become a business account has been sent successfully, check your email the next few days to complete the process',
      name: 'businessAccountDone',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Posts`
  String get posts {
    return Intl.message(
      'Posts',
      name: 'posts',
      desc: '',
      args: [],
    );
  }

  /// `Business information`
  String get businessInformation {
    return Intl.message(
      'Business information',
      name: 'businessInformation',
      desc: '',
      args: [],
    );
  }

  /// `Brand information`
  String get brandInformation {
    return Intl.message(
      'Brand information',
      name: 'brandInformation',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arabic {
    return Intl.message(
      'Arabic',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `Loyalty gifts`
  String get loyaltyGifts {
    return Intl.message(
      'Loyalty gifts',
      name: 'loyaltyGifts',
      desc: '',
      args: [],
    );
  }

  /// `Profile information`
  String get profileInformation {
    return Intl.message(
      'Profile information',
      name: 'profileInformation',
      desc: '',
      args: [],
    );
  }

  /// `Blocking`
  String get blocking {
    return Intl.message(
      'Blocking',
      name: 'blocking',
      desc: '',
      args: [],
    );
  }

  /// `Privacy policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Account information`
  String get accountInformation {
    return Intl.message(
      'Account information',
      name: 'accountInformation',
      desc: '',
      args: [],
    );
  }

  /// `Account management`
  String get accountManagement {
    return Intl.message(
      'Account management',
      name: 'accountManagement',
      desc: '',
      args: [],
    );
  }

  /// `Account settings`
  String get accountSettings {
    return Intl.message(
      'Account settings',
      name: 'accountSettings',
      desc: '',
      args: [],
    );
  }

  /// `Upload reels`
  String get uploadReels {
    return Intl.message(
      'Upload reels',
      name: 'uploadReels',
      desc: '',
      args: [],
    );
  }

  /// `Transactions`
  String get transactions {
    return Intl.message(
      'Transactions',
      name: 'transactions',
      desc: '',
      args: [],
    );
  }

  /// `Make money`
  String get makeMoney {
    return Intl.message(
      'Make money',
      name: 'makeMoney',
      desc: '',
      args: [],
    );
  }

  /// `To guarantee the security of your account and to secure privacy and information ,do not share your new password with anyone else`
  String get changePasswordWarning {
    return Intl.message(
      'To guarantee the security of your account and to secure privacy and information ,do not share your new password with anyone else',
      name: 'changePasswordWarning',
      desc: '',
      args: [],
    );
  }

  /// `Account privacy`
  String get accountPrivacy {
    return Intl.message(
      'Account privacy',
      name: 'accountPrivacy',
      desc: '',
      args: [],
    );
  }

  /// `Private account`
  String get privateAccount {
    return Intl.message(
      'Private account',
      name: 'privateAccount',
      desc: '',
      args: [],
    );
  }

  /// `Switching to a private account means only your followers can see your posts, followers, and who you follow. public accounts allow anyone to view your content and interact with you`
  String get privateAccountDescription {
    return Intl.message(
      'Switching to a private account means only your followers can see your posts, followers, and who you follow. public accounts allow anyone to view your content and interact with you',
      name: 'privateAccountDescription',
      desc: '',
      args: [],
    );
  }

  /// `Manage block list`
  String get manageBlockList {
    return Intl.message(
      'Manage block list',
      name: 'manageBlockList',
      desc: '',
      args: [],
    );
  }

  /// `block`
  String get block {
    return Intl.message(
      'block',
      name: 'block',
      desc: '',
      args: [],
    );
  }

  /// `Unblock`
  String get unblock {
    return Intl.message(
      'Unblock',
      name: 'unblock',
      desc: '',
      args: [],
    );
  }

  /// `My wallet`
  String get myWallet {
    return Intl.message(
      'My wallet',
      name: 'myWallet',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `In progress`
  String get inProgress {
    return Intl.message(
      'In progress',
      name: 'inProgress',
      desc: '',
      args: [],
    );
  }

  /// `My orders`
  String get myOrders {
    return Intl.message(
      'My orders',
      name: 'myOrders',
      desc: '',
      args: [],
    );
  }

  /// `Your orders are empty`
  String get emptyOrders {
    return Intl.message(
      'Your orders are empty',
      name: 'emptyOrders',
      desc: '',
      args: [],
    );
  }

  /// `View details`
  String get viewDetails {
    return Intl.message(
      'View details',
      name: 'viewDetails',
      desc: '',
      args: [],
    );
  }

  /// `Order details`
  String get orderDetails {
    return Intl.message(
      'Order details',
      name: 'orderDetails',
      desc: '',
      args: [],
    );
  }

  /// `Order ID`
  String get orderId {
    return Intl.message(
      'Order ID',
      name: 'orderId',
      desc: '',
      args: [],
    );
  }

  /// `Call`
  String get call {
    return Intl.message(
      'Call',
      name: 'call',
      desc: '',
      args: [],
    );
  }

  /// `Delivering to`
  String get deliveringTo {
    return Intl.message(
      'Delivering to',
      name: 'deliveringTo',
      desc: '',
      args: [],
    );
  }

  /// `Your order details`
  String get yourOrderDetails {
    return Intl.message(
      'Your order details',
      name: 'yourOrderDetails',
      desc: '',
      args: [],
    );
  }

  /// `Qty`
  String get qyt {
    return Intl.message(
      'Qty',
      name: 'qyt',
      desc: '',
      args: [],
    );
  }

  /// `Payment details`
  String get paymentDetails {
    return Intl.message(
      'Payment details',
      name: 'paymentDetails',
      desc: '',
      args: [],
    );
  }

  /// `Followers`
  String get followers {
    return Intl.message(
      'Followers',
      name: 'followers',
      desc: '',
      args: [],
    );
  }

  /// `Following`
  String get followings {
    return Intl.message(
      'Following',
      name: 'followings',
      desc: '',
      args: [],
    );
  }

  /// `Edit profile`
  String get editProfile {
    return Intl.message(
      'Edit profile',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get remove {
    return Intl.message(
      'Remove',
      name: 'remove',
      desc: '',
      args: [],
    );
  }

  /// `Bio`
  String get bio {
    return Intl.message(
      'Bio',
      name: 'bio',
      desc: '',
      args: [],
    );
  }

  /// `Take a photo`
  String get takeAPhoto {
    return Intl.message(
      'Take a photo',
      name: 'takeAPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Choose from gallery`
  String get chooseFromGallery {
    return Intl.message(
      'Choose from gallery',
      name: 'chooseFromGallery',
      desc: '',
      args: [],
    );
  }

  /// `My services`
  String get myServices {
    return Intl.message(
      'My services',
      name: 'myServices',
      desc: '',
      args: [],
    );
  }

  /// `My store`
  String get myStore {
    return Intl.message(
      'My store',
      name: 'myStore',
      desc: '',
      args: [],
    );
  }

  /// `Explore services`
  String get exploreServices {
    return Intl.message(
      'Explore services',
      name: 'exploreServices',
      desc: '',
      args: [],
    );
  }

  /// `Visit store`
  String get visitStore {
    return Intl.message(
      'Visit store',
      name: 'visitStore',
      desc: '',
      args: [],
    );
  }

  /// `Appointments management`
  String get appointmentsManagement {
    return Intl.message(
      'Appointments management',
      name: 'appointmentsManagement',
      desc: '',
      args: [],
    );
  }

  /// `Overdue`
  String get overdue {
    return Intl.message(
      'Overdue',
      name: 'overdue',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get completed {
    return Intl.message(
      'Completed',
      name: 'completed',
      desc: '',
      args: [],
    );
  }

  /// `Your Appointments are empty`
  String get emptyAppointments {
    return Intl.message(
      'Your Appointments are empty',
      name: 'emptyAppointments',
      desc: '',
      args: [],
    );
  }

  /// `Appointment details`
  String get appointmentDetails {
    return Intl.message(
      'Appointment details',
      name: 'appointmentDetails',
      desc: '',
      args: [],
    );
  }

  /// `Appointment ID`
  String get appointmentId {
    return Intl.message(
      'Appointment ID',
      name: 'appointmentId',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message(
      'Date',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get time {
    return Intl.message(
      'Time',
      name: 'time',
      desc: '',
      args: [],
    );
  }

  /// `Customer info`
  String get customerInfo {
    return Intl.message(
      'Customer info',
      name: 'customerInfo',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Payment method`
  String get paymentMethod {
    return Intl.message(
      'Payment method',
      name: 'paymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get filter {
    return Intl.message(
      'Filter',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message(
      'Reset',
      name: 'reset',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message(
      'Apply',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Report`
  String get report {
    return Intl.message(
      'Report',
      name: 'report',
      desc: '',
      args: [],
    );
  }

  /// `Why are you reporting?`
  String get whyAreYouReporting {
    return Intl.message(
      'Why are you reporting?',
      name: 'whyAreYouReporting',
      desc: '',
      args: [],
    );
  }

  /// `Your report is anonymous, except if you are reporting an intellectual property infringement. if someone is in immediate danger, call the local emergency services`
  String get reportDescription {
    return Intl.message(
      'Your report is anonymous, except if you are reporting an intellectual property infringement. if someone is in immediate danger, call the local emergency services',
      name: 'reportDescription',
      desc: '',
      args: [],
    );
  }

  /// `Help us understand the problem`
  String get helpUsUnderstandTheProblem {
    return Intl.message(
      'Help us understand the problem',
      name: 'helpUsUnderstandTheProblem',
      desc: '',
      args: [],
    );
  }

  /// `Submit report`
  String get submitReport {
    return Intl.message(
      'Submit report',
      name: 'submitReport',
      desc: '',
      args: [],
    );
  }

  /// `Thanks for submitting a report`
  String get thanksForReporting {
    return Intl.message(
      'Thanks for submitting a report',
      name: 'thanksForReporting',
      desc: '',
      args: [],
    );
  }

  /// `We take reports seriously and after a thorough review, our support team will get back to you`
  String get weTakeReports {
    return Intl.message(
      'We take reports seriously and after a thorough review, our support team will get back to you',
      name: 'weTakeReports',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `read more`
  String get readMore {
    return Intl.message(
      'read more',
      name: 'readMore',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to block this user?`
  String get sureBlock {
    return Intl.message(
      'Are you sure you want to block this user?',
      name: 'sureBlock',
      desc: '',
      args: [],
    );
  }

  /// `User blocked Successfully`
  String get blockSuccessMessage {
    return Intl.message(
      'User blocked Successfully',
      name: 'blockSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `Spam`
  String get spam {
    return Intl.message(
      'Spam',
      name: 'spam',
      desc: '',
      args: [],
    );
  }

  /// `Nudity`
  String get nudity {
    return Intl.message(
      'Nudity',
      name: 'nudity',
      desc: '',
      args: [],
    );
  }

  /// `Scam`
  String get scam {
    return Intl.message(
      'Scam',
      name: 'scam',
      desc: '',
      args: [],
    );
  }

  /// `Illegal`
  String get illegal {
    return Intl.message(
      'Illegal',
      name: 'illegal',
      desc: '',
      args: [],
    );
  }

  /// `Violence`
  String get violence {
    return Intl.message(
      'Violence',
      name: 'violence',
      desc: '',
      args: [],
    );
  }

  /// `Suicide or Self-Injury`
  String get suicideOrSelfInjury {
    return Intl.message(
      'Suicide or Self-Injury',
      name: 'suicideOrSelfInjury',
      desc: '',
      args: [],
    );
  }

  /// `Hate Speech`
  String get hateSpeech {
    return Intl.message(
      'Hate Speech',
      name: 'hateSpeech',
      desc: '',
      args: [],
    );
  }

  /// `Against Sharia`
  String get againstSharia {
    return Intl.message(
      'Against Sharia',
      name: 'againstSharia',
      desc: '',
      args: [],
    );
  }

  /// `Something Else`
  String get somethingElse {
    return Intl.message(
      'Something Else',
      name: 'somethingElse',
      desc: '',
      args: [],
    );
  }

  /// `Pick industry first`
  String get pickIndustryFirst {
    return Intl.message(
      'Pick industry first',
      name: 'pickIndustryFirst',
      desc: '',
      args: [],
    );
  }

  /// `Pick business account type first`
  String get pickBusinessAccountTypeFirst {
    return Intl.message(
      'Pick business account type first',
      name: 'pickBusinessAccountTypeFirst',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `Both`
  String get both {
    return Intl.message(
      'Both',
      name: 'both',
      desc: '',
      args: [],
    );
  }

  /// `Service Provider`
  String get serviceProvider {
    return Intl.message(
      'Service Provider',
      name: 'serviceProvider',
      desc: '',
      args: [],
    );
  }

  /// `Online Store`
  String get onlineStore {
    return Intl.message(
      'Online Store',
      name: 'onlineStore',
      desc: '',
      args: [],
    );
  }

  /// `Replying to`
  String get replyingTo {
    return Intl.message(
      'Replying to',
      name: 'replyingTo',
      desc: '',
      args: [],
    );
  }

  /// `There is no blocked users`
  String get noBlockedUsers {
    return Intl.message(
      'There is no blocked users',
      name: 'noBlockedUsers',
      desc: '',
      args: [],
    );
  }

  /// `You have to be a content creator to upload reels.\napply to upload reels now.`
  String get youHaveToBeContentCreatorFirst {
    return Intl.message(
      'You have to be a content creator to upload reels.\napply to upload reels now.',
      name: 'youHaveToBeContentCreatorFirst',
      desc: '',
      args: [],
    );
  }

  /// `Requested`
  String get requested {
    return Intl.message(
      'Requested',
      name: 'requested',
      desc: '',
      args: [],
    );
  }

  /// `JOD`
  String get jod {
    return Intl.message(
      'JOD',
      name: 'jod',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get age {
    return Intl.message(
      'Age',
      name: 'age',
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

  /// `The request has been canceled`
  String get seekCanceled {
    return Intl.message(
      'The request has been canceled',
      name: 'seekCanceled',
      desc: '',
      args: [],
    );
  }

  /// `Documents`
  String get documents {
    return Intl.message(
      'Documents',
      name: 'documents',
      desc: '',
      args: [],
    );
  }

  /// `Map`
  String get map {
    return Intl.message(
      'Map',
      name: 'map',
      desc: '',
      args: [],
    );
  }

  /// `Request completed successfully`
  String get requestCompleted {
    return Intl.message(
      'Request completed successfully',
      name: 'requestCompleted',
      desc: '',
      args: [],
    );
  }

  /// `Accept`
  String get accept {
    return Intl.message(
      'Accept',
      name: 'accept',
      desc: '',
      args: [],
    );
  }

  /// `Request canceled successfully`
  String get requestCanceled {
    return Intl.message(
      'Request canceled successfully',
      name: 'requestCanceled',
      desc: '',
      args: [],
    );
  }

  /// `Request accepted successfully`
  String get requestAccepted {
    return Intl.message(
      'Request accepted successfully',
      name: 'requestAccepted',
      desc: '',
      args: [],
    );
  }

  /// `You don't have the permission to access the application`
  String get youDontHavePermissionToAccessApp {
    return Intl.message(
      'You don\'t have the permission to access the application',
      name: 'youDontHavePermissionToAccessApp',
      desc: '',
      args: [],
    );
  }

  /// `Leave Comment`
  String get leaveComment {
    return Intl.message(
      'Leave Comment',
      name: 'leaveComment',
      desc: '',
      args: [],
    );
  }

  /// `Arrived`
  String get arrived {
    return Intl.message(
      'Arrived',
      name: 'arrived',
      desc: '',
      args: [],
    );
  }

  /// `Reject`
  String get reject {
    return Intl.message(
      'Reject',
      name: 'reject',
      desc: '',
      args: [],
    );
  }

  /// `You are offline`
  String get youAreOffline {
    return Intl.message(
      'You are offline',
      name: 'youAreOffline',
      desc: '',
      args: [],
    );
  }

  /// `Start now and receive requests`
  String get youAreOfflineBody {
    return Intl.message(
      'Start now and receive requests',
      name: 'youAreOfflineBody',
      desc: '',
      args: [],
    );
  }

  /// `You are online Now`
  String get youAreOnline {
    return Intl.message(
      'You are online Now',
      name: 'youAreOnline',
      desc: '',
      args: [],
    );
  }

  /// `Wait for requests`
  String get youAreOnlineBody {
    return Intl.message(
      'Wait for requests',
      name: 'youAreOnlineBody',
      desc: '',
      args: [],
    );
  }

  /// `Verified`
  String get verified {
    return Intl.message(
      'Verified',
      name: 'verified',
      desc: '',
      args: [],
    );
  }

  /// `Your request has been sent and admins will review it`
  String get verifiedBody {
    return Intl.message(
      'Your request has been sent and admins will review it',
      name: 'verifiedBody',
      desc: '',
      args: [],
    );
  }

  /// `Please attach the required files`
  String get attachRequiredFiles {
    return Intl.message(
      'Please attach the required files',
      name: 'attachRequiredFiles',
      desc: '',
      args: [],
    );
  }

  /// `Unknown`
  String get unknown {
    return Intl.message(
      'Unknown',
      name: 'unknown',
      desc: '',
      args: [],
    );
  }

  /// `Click to view`
  String get clickToView {
    return Intl.message(
      'Click to view',
      name: 'clickToView',
      desc: '',
      args: [],
    );
  }

  /// `Certifications`
  String get certifications {
    return Intl.message(
      'Certifications',
      name: 'certifications',
      desc: '',
      args: [],
    );
  }

  /// `Service category`
  String get serviceCategory {
    return Intl.message(
      'Service category',
      name: 'serviceCategory',
      desc: '',
      args: [],
    );
  }

  /// `Service sub category`
  String get serviceSubCategory {
    return Intl.message(
      'Service sub category',
      name: 'serviceSubCategory',
      desc: '',
      args: [],
    );
  }

  /// `Service`
  String get service {
    return Intl.message(
      'Service',
      name: 'service',
      desc: '',
      args: [],
    );
  }

  /// `professional practice number`
  String get professionalPracticeNumber {
    return Intl.message(
      'professional practice number',
      name: 'professionalPracticeNumber',
      desc: '',
      args: [],
    );
  }

  /// `Add review`
  String get addReview {
    return Intl.message(
      'Add review',
      name: 'addReview',
      desc: '',
      args: [],
    );
  }

  /// `Reviews`
  String get reviews {
    return Intl.message(
      'Reviews',
      name: 'reviews',
      desc: '',
      args: [],
    );
  }

  /// `Years of Exp`
  String get yearsOfExp {
    return Intl.message(
      'Years of Exp',
      name: 'yearsOfExp',
      desc: '',
      args: [],
    );
  }

  /// `Patients`
  String get patients {
    return Intl.message(
      'Patients',
      name: 'patients',
      desc: '',
      args: [],
    );
  }

  /// `How you feel ?`
  String get howYouFeel {
    return Intl.message(
      'How you feel ?',
      name: 'howYouFeel',
      desc: '',
      args: [],
    );
  }

  /// `additional notes`
  String get additionalNotes {
    return Intl.message(
      'additional notes',
      name: 'additionalNotes',
      desc: '',
      args: [],
    );
  }

  /// `Find a doctor`
  String get findADoctor {
    return Intl.message(
      'Find a doctor',
      name: 'findADoctor',
      desc: '',
      args: [],
    );
  }

  /// `Choose location and doctor specification`
  String get chooseLocationAndDoctorSpec {
    return Intl.message(
      'Choose location and doctor specification',
      name: 'chooseLocationAndDoctorSpec',
      desc: '',
      args: [],
    );
  }

  /// `Don't cancel`
  String get dontCancel {
    return Intl.message(
      'Don\'t cancel',
      name: 'dontCancel',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you\nwant to cancel request ?`
  String get sureCancelRequest {
    return Intl.message(
      'Are you sure you\nwant to cancel request ?',
      name: 'sureCancelRequest',
      desc: '',
      args: [],
    );
  }

  /// `Searching for a doctor`
  String get searchingForDoctorTitle {
    return Intl.message(
      'Searching for a doctor',
      name: 'searchingForDoctorTitle',
      desc: '',
      args: [],
    );
  }

  /// `We are searching for doctors nearest to you`
  String get searchingForDoctorBody {
    return Intl.message(
      'We are searching for doctors nearest to you',
      name: 'searchingForDoctorBody',
      desc: '',
      args: [],
    );
  }

  /// `Destination`
  String get destination {
    return Intl.message(
      'Destination',
      name: 'destination',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Manage request`
  String get manageRequest {
    return Intl.message(
      'Manage request',
      name: 'manageRequest',
      desc: '',
      args: [],
    );
  }

  /// `Need help ?`
  String get needHelp {
    return Intl.message(
      'Need help ?',
      name: 'needHelp',
      desc: '',
      args: [],
    );
  }

  /// `On the way`
  String get onTheWay {
    return Intl.message(
      'On the way',
      name: 'onTheWay',
      desc: '',
      args: [],
    );
  }

  /// `Doctor start`
  String get doctorStart {
    return Intl.message(
      'Doctor start',
      name: 'doctorStart',
      desc: '',
      args: [],
    );
  }

  /// `Doctor end`
  String get doctorEnd {
    return Intl.message(
      'Doctor end',
      name: 'doctorEnd',
      desc: '',
      args: [],
    );
  }

  /// `Me`
  String get me {
    return Intl.message(
      'Me',
      name: 'me',
      desc: '',
      args: [],
    );
  }

  /// `Feedback was submitted successfully`
  String get feedbackSubmittedSuccessfully {
    return Intl.message(
      'Feedback was submitted successfully',
      name: 'feedbackSubmittedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Your feedback`
  String get yourFeedback {
    return Intl.message(
      'Your feedback',
      name: 'yourFeedback',
      desc: '',
      args: [],
    );
  }

  /// `Leave feedback`
  String get leaveFeedback {
    return Intl.message(
      'Leave feedback',
      name: 'leaveFeedback',
      desc: '',
      args: [],
    );
  }

  /// `Request purpose`
  String get requestPurpose {
    return Intl.message(
      'Request purpose',
      name: 'requestPurpose',
      desc: '',
      args: [],
    );
  }

  /// `Request details`
  String get requestDetails {
    return Intl.message(
      'Request details',
      name: 'requestDetails',
      desc: '',
      args: [],
    );
  }

  /// `Save new password`
  String get saveNewPassword {
    return Intl.message(
      'Save new password',
      name: 'saveNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Contact us`
  String get contactUs {
    return Intl.message(
      'Contact us',
      name: 'contactUs',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Support`
  String get support {
    return Intl.message(
      'Support',
      name: 'support',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Reset password`
  String get resetPassword {
    return Intl.message(
      'Reset password',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with password`
  String get signInWithPassword {
    return Intl.message(
      'Sign in with password',
      name: 'signInWithPassword',
      desc: '',
      args: [],
    );
  }

  /// `Height`
  String get height {
    return Intl.message(
      'Height',
      name: 'height',
      desc: '',
      args: [],
    );
  }

  /// `Weight`
  String get weight {
    return Intl.message(
      'Weight',
      name: 'weight',
      desc: '',
      args: [],
    );
  }

  /// `Blood type`
  String get bloodType {
    return Intl.message(
      'Blood type',
      name: 'bloodType',
      desc: '',
      args: [],
    );
  }

  /// `Chronic diseases`
  String get chronicDiseases {
    return Intl.message(
      'Chronic diseases',
      name: 'chronicDiseases',
      desc: '',
      args: [],
    );
  }

  /// `Profile Picture`
  String get profilePicture {
    return Intl.message(
      'Profile Picture',
      name: 'profilePicture',
      desc: '',
      args: [],
    );
  }

  /// `Add your image`
  String get addYourImage {
    return Intl.message(
      'Add your image',
      name: 'addYourImage',
      desc: '',
      args: [],
    );
  }

  /// `National ID`
  String get nationalId {
    return Intl.message(
      'National ID',
      name: 'nationalId',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message(
      'Account',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Personal`
  String get personal {
    return Intl.message(
      'Personal',
      name: 'personal',
      desc: '',
      args: [],
    );
  }

  /// `Updated successfully`
  String get updatedSuccessfully {
    return Intl.message(
      'Updated successfully',
      name: 'updatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Post`
  String get post {
    return Intl.message(
      'Post',
      name: 'post',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get share {
    return Intl.message(
      'Share',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Send in message`
  String get sendInMessage {
    return Intl.message(
      'Send in message',
      name: 'sendInMessage',
      desc: '',
      args: [],
    );
  }

  /// `Your request has been sent successfully, we are working on adding the industry you requested`
  String get industryRequested {
    return Intl.message(
      'Your request has been sent successfully, we are working on adding the industry you requested',
      name: 'industryRequested',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load content. Please try again.`
  String get failedToLoadContent {
    return Intl.message(
      'Failed to load content. Please try again.',
      name: 'failedToLoadContent',
      desc: '',
      args: [],
    );
  }

  /// `Guest Login`
  String get guestLogin {
    return Intl.message(
      'Guest Login',
      name: 'guestLogin',
      desc: '',
      args: [],
    );
  }

  /// `You have to login first`
  String get youHaveToLoginFirst {
    return Intl.message(
      'You have to login first',
      name: 'youHaveToLoginFirst',
      desc: '',
      args: [],
    );
  }

  /// `Can't find your desired industry? add it here`
  String get cantFindIndustry {
    return Intl.message(
      'Can\'t find your desired industry? add it here',
      name: 'cantFindIndustry',
      desc: '',
      args: [],
    );
  }

  /// `It looks like you are not connected to the internet`
  String get noInternetConnection {
    return Intl.message(
      'It looks like you are not connected to the internet',
      name: 'noInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `Complete your information`
  String get completeYourInfo {
    return Intl.message(
      'Complete your information',
      name: 'completeYourInfo',
      desc: '',
      args: [],
    );
  }

  /// `Are You Sure You Want To Cancel This Appointment ?`
  String get sureCancelAppointment {
    return Intl.message(
      'Are You Sure You Want To Cancel This Appointment ?',
      name: 'sureCancelAppointment',
      desc: '',
      args: [],
    );
  }

  /// `January`
  String get january {
    return Intl.message(
      'January',
      name: 'january',
      desc: '',
      args: [],
    );
  }

  /// `February`
  String get february {
    return Intl.message(
      'February',
      name: 'february',
      desc: '',
      args: [],
    );
  }

  /// `March`
  String get march {
    return Intl.message(
      'March',
      name: 'march',
      desc: '',
      args: [],
    );
  }

  /// `April`
  String get april {
    return Intl.message(
      'April',
      name: 'april',
      desc: '',
      args: [],
    );
  }

  /// `May`
  String get may {
    return Intl.message(
      'May',
      name: 'may',
      desc: '',
      args: [],
    );
  }

  /// `June`
  String get june {
    return Intl.message(
      'June',
      name: 'june',
      desc: '',
      args: [],
    );
  }

  /// `July`
  String get july {
    return Intl.message(
      'July',
      name: 'july',
      desc: '',
      args: [],
    );
  }

  /// `August`
  String get august {
    return Intl.message(
      'August',
      name: 'august',
      desc: '',
      args: [],
    );
  }

  /// `September`
  String get september {
    return Intl.message(
      'September',
      name: 'september',
      desc: '',
      args: [],
    );
  }

  /// `October`
  String get october {
    return Intl.message(
      'October',
      name: 'october',
      desc: '',
      args: [],
    );
  }

  /// `November`
  String get november {
    return Intl.message(
      'November',
      name: 'november',
      desc: '',
      args: [],
    );
  }

  /// `December`
  String get december {
    return Intl.message(
      'December',
      name: 'december',
      desc: '',
      args: [],
    );
  }

  /// `Psychiatric therapist`
  String get psychiatrist {
    return Intl.message(
      'Psychiatric therapist',
      name: 'psychiatrist',
      desc: '',
      args: [],
    );
  }

  /// `Patients`
  String get numberOfPatients {
    return Intl.message(
      'Patients',
      name: 'numberOfPatients',
      desc: '',
      args: [],
    );
  }

  /// `Order This Service`
  String get orderThisService {
    return Intl.message(
      'Order This Service',
      name: 'orderThisService',
      desc: '',
      args: [],
    );
  }

  /// `Submit Your Order`
  String get submitYourOrder {
    return Intl.message(
      'Submit Your Order',
      name: 'submitYourOrder',
      desc: '',
      args: [],
    );
  }

  /// `Attach Documents`
  String get attachDocuments {
    return Intl.message(
      'Attach Documents',
      name: 'attachDocuments',
      desc: '',
      args: [],
    );
  }

  /// `Attach a maximum of 5 files`
  String get attachMaximumOf5Files {
    return Intl.message(
      'Attach a maximum of 5 files',
      name: 'attachMaximumOf5Files',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phoneNumberCaps {
    return Intl.message(
      'Phone number',
      name: 'phoneNumberCaps',
      desc: '',
      args: [],
    );
  }

  /// `phone number`
  String get phoneNumber {
    return Intl.message(
      'phone number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get notes {
    return Intl.message(
      'Notes',
      name: 'notes',
      desc: '',
      args: [],
    );
  }

  /// `type here`
  String get writeHere {
    return Intl.message(
      'type here',
      name: 'writeHere',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get payMethod {
    return Intl.message(
      'Payment Method',
      name: 'payMethod',
      desc: '',
      args: [],
    );
  }

  /// `Choose the payment method that suits you`
  String get choosePayMethod {
    return Intl.message(
      'Choose the payment method that suits you',
      name: 'choosePayMethod',
      desc: '',
      args: [],
    );
  }

  /// `Pay Cash`
  String get payCash {
    return Intl.message(
      'Pay Cash',
      name: 'payCash',
      desc: '',
      args: [],
    );
  }

  /// `Wallet`
  String get wallet {
    return Intl.message(
      'Wallet',
      name: 'wallet',
      desc: '',
      args: [],
    );
  }

  /// `Payment via Apple Pay`
  String get payApplePay {
    return Intl.message(
      'Payment via Apple Pay',
      name: 'payApplePay',
      desc: '',
      args: [],
    );
  }

  /// `Payment via Western Union`
  String get payWesternUnion {
    return Intl.message(
      'Payment via Western Union',
      name: 'payWesternUnion',
      desc: '',
      args: [],
    );
  }

  /// `Complete Payment Process`
  String get completePaymentProcess {
    return Intl.message(
      'Complete Payment Process',
      name: 'completePaymentProcess',
      desc: '',
      args: [],
    );
  }

  /// `The service request has been completed`
  String get serviceRequestCompletedTitle {
    return Intl.message(
      'The service request has been completed',
      name: 'serviceRequestCompletedTitle',
      desc: '',
      args: [],
    );
  }

  /// `Your service request has been successfully requested.\n Just wait for the doctor to approve your request\n and contact you as soon as possible.`
  String get serviceRequestCompletedBody {
    return Intl.message(
      'Your service request has been successfully requested.\n Just wait for the doctor to approve your request\n and contact you as soon as possible.',
      name: 'serviceRequestCompletedBody',
      desc: '',
      args: [],
    );
  }

  /// `Chats`
  String get chats {
    return Intl.message(
      'Chats',
      name: 'chats',
      desc: '',
      args: [],
    );
  }

  /// `Counseling has begun`
  String get chatStarted {
    return Intl.message(
      'Counseling has begun',
      name: 'chatStarted',
      desc: '',
      args: [],
    );
  }

  /// `You can now talk about your problem with the doctor`
  String get patientCanChatNow {
    return Intl.message(
      'You can now talk about your problem with the doctor',
      name: 'patientCanChatNow',
      desc: '',
      args: [],
    );
  }

  /// `You can now chat with the patient`
  String get doctorCanChatNow {
    return Intl.message(
      'You can now chat with the patient',
      name: 'doctorCanChatNow',
      desc: '',
      args: [],
    );
  }

  /// `type here`
  String get writeMessageHere {
    return Intl.message(
      'type here',
      name: 'writeMessageHere',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Are You Sure You Want To Delete This Chat ?`
  String get sureDeleteChat {
    return Intl.message(
      'Are You Sure You Want To Delete This Chat ?',
      name: 'sureDeleteChat',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Are You Sure You Want To Delete The Notifications ?`
  String get sureDeleteNotifications {
    return Intl.message(
      'Are You Sure You Want To Delete The Notifications ?',
      name: 'sureDeleteNotifications',
      desc: '',
      args: [],
    );
  }

  /// `My Profile`
  String get myProfile {
    return Intl.message(
      'My Profile',
      name: 'myProfile',
      desc: '',
      args: [],
    );
  }

  /// `Personal Information`
  String get personalInformation {
    return Intl.message(
      'Personal Information',
      name: 'personalInformation',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Orders history`
  String get ordersHistory {
    return Intl.message(
      'Orders history',
      name: 'ordersHistory',
      desc: '',
      args: [],
    );
  }

  /// `Sign Out`
  String get signOut {
    return Intl.message(
      'Sign Out',
      name: 'signOut',
      desc: '',
      args: [],
    );
  }

  /// `Delete Account`
  String get deleteAccount {
    return Intl.message(
      'Delete Account',
      name: 'deleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Are You Sure You Want To Delete Your Account ?`
  String get sureDeleteAccount {
    return Intl.message(
      'Are You Sure You Want To Delete Your Account ?',
      name: 'sureDeleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get pending {
    return Intl.message(
      'Pending',
      name: 'pending',
      desc: '',
      args: [],
    );
  }

  /// `Accepted`
  String get accepted {
    return Intl.message(
      'Accepted',
      name: 'accepted',
      desc: '',
      args: [],
    );
  }

  /// `Rejected`
  String get rejected {
    return Intl.message(
      'Rejected',
      name: 'rejected',
      desc: '',
      args: [],
    );
  }

  /// `Delivered`
  String get delivered {
    return Intl.message(
      'Delivered',
      name: 'delivered',
      desc: '',
      args: [],
    );
  }

  /// `Are You Sure You Want To Cancel This Order ?`
  String get sureCancelOrder {
    return Intl.message(
      'Are You Sure You Want To Cancel This Order ?',
      name: 'sureCancelOrder',
      desc: '',
      args: [],
    );
  }

  /// `Are You Sure You Want To Sign Out ?`
  String get sureSignOut {
    return Intl.message(
      'Are You Sure You Want To Sign Out ?',
      name: 'sureSignOut',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Change password`
  String get changePassword {
    return Intl.message(
      'Change password',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `About App`
  String get aboutApp {
    return Intl.message(
      'About App',
      name: 'aboutApp',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Current password`
  String get currentPassword {
    return Intl.message(
      'Current password',
      name: 'currentPassword',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get newPassword {
    return Intl.message(
      'New password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm new password`
  String get confirmNewPassword {
    return Intl.message(
      'Confirm new password',
      name: 'confirmNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Pick more`
  String get pickMore {
    return Intl.message(
      'Pick more',
      name: 'pickMore',
      desc: '',
      args: [],
    );
  }

  /// `Use 8 or more characters, using a combination of upper and lower case letters, numbers, and symbols.`
  String get passwordValidationText {
    return Intl.message(
      'Use 8 or more characters, using a combination of upper and lower case letters, numbers, and symbols.',
      name: 'passwordValidationText',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get passwordsDontMatch {
    return Intl.message(
      'Passwords do not match',
      name: 'passwordsDontMatch',
      desc: '',
      args: [],
    );
  }

  /// `Files`
  String get files {
    return Intl.message(
      'Files',
      name: 'files',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get create {
    return Intl.message(
      'Create',
      name: 'create',
      desc: '',
      args: [],
    );
  }

  /// `Required`
  String get required {
    return Intl.message(
      'Required',
      name: 'required',
      desc: '',
      args: [],
    );
  }

  /// `Go Back`
  String get goBack {
    return Intl.message(
      'Go Back',
      name: 'goBack',
      desc: '',
      args: [],
    );
  }

  /// `No Notifications Yet`
  String get noNotificationsYet {
    return Intl.message(
      'No Notifications Yet',
      name: 'noNotificationsYet',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Are You Sure You Want To Exit The App ?`
  String get sureExitApp {
    return Intl.message(
      'Are You Sure You Want To Exit The App ?',
      name: 'sureExitApp',
      desc: '',
      args: [],
    );
  }

  /// `It is not permissible to select more than 5 files`
  String get cantPickMoreThan5Files {
    return Intl.message(
      'It is not permissible to select more than 5 files',
      name: 'cantPickMoreThan5Files',
      desc: '',
      args: [],
    );
  }

  /// `It is not permissible to select more than 10 files`
  String get cantPickMoreThan10Files {
    return Intl.message(
      'It is not permissible to select more than 10 files',
      name: 'cantPickMoreThan10Files',
      desc: '',
      args: [],
    );
  }

  /// `The allowed size for photos and files is 5 MB and for videos is 25 MB`
  String get cantPickFilesTooLarge {
    return Intl.message(
      'The allowed size for photos and files is 5 MB and for videos is 25 MB',
      name: 'cantPickFilesTooLarge',
      desc: '',
      args: [],
    );
  }

  /// `a.m`
  String get am {
    return Intl.message(
      'a.m',
      name: 'am',
      desc: '',
      args: [],
    );
  }

  /// `p.m`
  String get pm {
    return Intl.message(
      'p.m',
      name: 'pm',
      desc: '',
      args: [],
    );
  }

  /// `Invalid password`
  String get passwordInvalid {
    return Intl.message(
      'Invalid password',
      name: 'passwordInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email`
  String get emailInvalid {
    return Intl.message(
      'Invalid email',
      name: 'emailInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Enter a number with 5 to 20 digits`
  String get phoneNumberInvalid {
    return Intl.message(
      'Enter a number with 5 to 20 digits',
      name: 'phoneNumberInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Pick image first`
  String get pickImageFirst {
    return Intl.message(
      'Pick image first',
      name: 'pickImageFirst',
      desc: '',
      args: [],
    );
  }

  /// `Pick video first`
  String get pickVideoFirst {
    return Intl.message(
      'Pick video first',
      name: 'pickVideoFirst',
      desc: '',
      args: [],
    );
  }

  /// `Enter at least four characters`
  String get usernameInvalid {
    return Intl.message(
      'Enter at least four characters',
      name: 'usernameInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Please select a payment method.`
  String get selectPaymentMethod {
    return Intl.message(
      'Please select a payment method.',
      name: 'selectPaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected Error Occurred`
  String get unExpectedError {
    return Intl.message(
      'Unexpected Error Occurred',
      name: 'unExpectedError',
      desc: '',
      args: [],
    );
  }

  /// `No Accepted Applications Yet`
  String get noAcceptedOrdersYet {
    return Intl.message(
      'No Accepted Applications Yet',
      name: 'noAcceptedOrdersYet',
      desc: '',
      args: [],
    );
  }

  /// `No Pending Applications Yet`
  String get noPendingOrdersYet {
    return Intl.message(
      'No Pending Applications Yet',
      name: 'noPendingOrdersYet',
      desc: '',
      args: [],
    );
  }

  /// `Liked your post`
  String get userLikedUrPost {
    return Intl.message(
      'Liked your post',
      name: 'userLikedUrPost',
      desc: '',
      args: [],
    );
  }

  /// `Liked your comment: {comment}`
  String userLikedUrComment(String comment) {
    return Intl.message(
      'Liked your comment: $comment',
      name: 'userLikedUrComment',
      desc: '',
      args: [comment],
    );
  }

  /// `Wants to follow you`
  String get userWantsToFollowYou {
    return Intl.message(
      'Wants to follow you',
      name: 'userWantsToFollowYou',
      desc: '',
      args: [],
    );
  }

  /// `Wants to chat with you`
  String get userWantsToChat {
    return Intl.message(
      'Wants to chat with you',
      name: 'userWantsToChat',
      desc: '',
      args: [],
    );
  }

  /// `Sent you a text`
  String get userSentYouAText {
    return Intl.message(
      'Sent you a text',
      name: 'userSentYouAText',
      desc: '',
      args: [],
    );
  }

  /// `Accepted your follow request`
  String get userAcceptedYourFollowRequest {
    return Intl.message(
      'Accepted your follow request',
      name: 'userAcceptedYourFollowRequest',
      desc: '',
      args: [],
    );
  }

  /// `Rejected your follow request`
  String get userRejectedYourFollowRequest {
    return Intl.message(
      'Rejected your follow request',
      name: 'userRejectedYourFollowRequest',
      desc: '',
      args: [],
    );
  }

  /// `Following`
  String get following {
    return Intl.message(
      'Following',
      name: 'following',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Cancelled`
  String get cancelled {
    return Intl.message(
      'Cancelled',
      name: 'cancelled',
      desc: '',
      args: [],
    );
  }

  /// `Approved`
  String get approved {
    return Intl.message(
      'Approved',
      name: 'approved',
      desc: '',
      args: [],
    );
  }

  /// `Commented on your post: {comment}`
  String userCommentedOnYourPost(String comment) {
    return Intl.message(
      'Commented on your post: $comment',
      name: 'userCommentedOnYourPost',
      desc: '',
      args: [comment],
    );
  }

  /// `Made an appointment`
  String get userMadeAnAppointment {
    return Intl.message(
      'Made an appointment',
      name: 'userMadeAnAppointment',
      desc: '',
      args: [],
    );
  }

  /// `Now follows you`
  String get userFollowedYou {
    return Intl.message(
      'Now follows you',
      name: 'userFollowedYou',
      desc: '',
      args: [],
    );
  }

  /// `{service} service has been cancelled`
  String serviceCancelled(String service) {
    return Intl.message(
      '$service service has been cancelled',
      name: 'serviceCancelled',
      desc: '',
      args: [service],
    );
  }

  /// `{service} service has been rejected`
  String serviceRejected(String service) {
    return Intl.message(
      '$service service has been rejected',
      name: 'serviceRejected',
      desc: '',
      args: [service],
    );
  }

  /// `{service} service has been approved`
  String serviceApproved(String service) {
    return Intl.message(
      '$service service has been approved',
      name: 'serviceApproved',
      desc: '',
      args: [service],
    );
  }

  /// `Order no: {orderId} has been cancelled`
  String orderCancelled(String orderId) {
    return Intl.message(
      'Order no: $orderId has been cancelled',
      name: 'orderCancelled',
      desc: '',
      args: [orderId],
    );
  }

  /// `Order no: {orderId} has been delivered`
  String orderDelivered(String orderId) {
    return Intl.message(
      'Order no: $orderId has been delivered',
      name: 'orderDelivered',
      desc: '',
      args: [orderId],
    );
  }

  /// `Are You Sure You Want To Delete Notification?`
  String get sureDeleteNotification {
    return Intl.message(
      'Are You Sure You Want To Delete Notification?',
      name: 'sureDeleteNotification',
      desc: '',
      args: [],
    );
  }

  /// `Account Created Successfully`
  String get registerSuccessMessage {
    return Intl.message(
      'Account Created Successfully',
      name: 'registerSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `Your Profile Has Been Modified Successfully`
  String get editProfileSuccessMessage {
    return Intl.message(
      'Your Profile Has Been Modified Successfully',
      name: 'editProfileSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `Your Password Has Been Changed Successfully`
  String get changePasswordSuccessMessage {
    return Intl.message(
      'Your Password Has Been Changed Successfully',
      name: 'changePasswordSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `Your Account Has Been Deleted Successfully`
  String get deleteAccountSuccessMessage {
    return Intl.message(
      'Your Account Has Been Deleted Successfully',
      name: 'deleteAccountSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `Notification Has Been Successfully Deleted`
  String get deleteNotificationSuccessMessage {
    return Intl.message(
      'Notification Has Been Successfully Deleted',
      name: 'deleteNotificationSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `No Chats Yet`
  String get noChatsYet {
    return Intl.message(
      'No Chats Yet',
      name: 'noChatsYet',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullNameCaps {
    return Intl.message(
      'Full Name',
      name: 'fullNameCaps',
      desc: '',
      args: [],
    );
  }

  /// `Fullname`
  String get fullName {
    return Intl.message(
      'Fullname',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Images`
  String get images {
    return Intl.message(
      'Images',
      name: 'images',
      desc: '',
      args: [],
    );
  }

  /// `Videos`
  String get videos {
    return Intl.message(
      'Videos',
      name: 'videos',
      desc: '',
      args: [],
    );
  }

  /// `Are You Sure You Want To Reject This Order ?`
  String get sureRejectOrder {
    return Intl.message(
      'Are You Sure You Want To Reject This Order ?',
      name: 'sureRejectOrder',
      desc: '',
      args: [],
    );
  }

  /// `Are You Sure You Want To Approve This Order ?`
  String get sureApproveOrder {
    return Intl.message(
      'Are You Sure You Want To Approve This Order ?',
      name: 'sureApproveOrder',
      desc: '',
      args: [],
    );
  }

  /// `The order was successfully approved`
  String get approveOrderSuccessMessage {
    return Intl.message(
      'The order was successfully approved',
      name: 'approveOrderSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `The order was successfully rejected`
  String get rejectOrderSuccessMessage {
    return Intl.message(
      'The order was successfully rejected',
      name: 'rejectOrderSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `There is no notes`
  String get noNotes {
    return Intl.message(
      'There is no notes',
      name: 'noNotes',
      desc: '',
      args: [],
    );
  }

  /// `Crated at`
  String get cratedAt {
    return Intl.message(
      'Crated at',
      name: 'cratedAt',
      desc: '',
      args: [],
    );
  }

  /// `File was successfully downloaded`
  String get fileDownloaded {
    return Intl.message(
      'File was successfully downloaded',
      name: 'fileDownloaded',
      desc: '',
      args: [],
    );
  }

  /// `Recording...`
  String get recording {
    return Intl.message(
      'Recording...',
      name: 'recording',
      desc: '',
      args: [],
    );
  }

  /// `loading...`
  String get loading {
    return Intl.message(
      'loading...',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `older messages`
  String get olderMessages {
    return Intl.message(
      'older messages',
      name: 'olderMessages',
      desc: '',
      args: [],
    );
  }

  /// `Order Info`
  String get orderInfo {
    return Intl.message(
      'Order Info',
      name: 'orderInfo',
      desc: '',
      args: [],
    );
  }

  /// `since {time}`
  String since(String time) {
    return Intl.message(
      'since $time',
      name: 'since',
      desc: '',
      args: [time],
    );
  }

  /// `Enter more than {charLength} characters`
  String enterMoreThan(int charLength) {
    return Intl.message(
      'Enter more than $charLength characters',
      name: 'enterMoreThan',
      desc: '',
      args: [charLength],
    );
  }

  /// `Provided value should be less than {maxValue}`
  String shouldBeLessThan(int maxValue) {
    return Intl.message(
      'Provided value should be less than $maxValue',
      name: 'shouldBeLessThan',
      desc: '',
      args: [maxValue],
    );
  }

  /// `Provided value should be more than {minValue}`
  String shouldBeMoreThan(int minValue) {
    return Intl.message(
      'Provided value should be more than $minValue',
      name: 'shouldBeMoreThan',
      desc: '',
      args: [minValue],
    );
  }

  /// `Enter exactly {charLength} characters`
  String enterExactly(int charLength) {
    return Intl.message(
      'Enter exactly $charLength characters',
      name: 'enterExactly',
      desc: '',
      args: [charLength],
    );
  }

  /// `days`
  String get day {
    return Intl.message(
      'days',
      name: 'day',
      desc: '',
      args: [],
    );
  }

  /// `hours`
  String get hours {
    return Intl.message(
      'hours',
      name: 'hours',
      desc: '',
      args: [],
    );
  }

  /// `minutes`
  String get minutes {
    return Intl.message(
      'minutes',
      name: 'minutes',
      desc: '',
      args: [],
    );
  }

  /// `since one minute`
  String get sinceOneMinute {
    return Intl.message(
      'since one minute',
      name: 'sinceOneMinute',
      desc: '',
      args: [],
    );
  }

  /// `file`
  String get fileSent {
    return Intl.message(
      'file',
      name: 'fileSent',
      desc: '',
      args: [],
    );
  }

  /// `You have arrived to the location`
  String get youHaveArrivedToTheLocation {
    return Intl.message(
      'You have arrived to the location',
      name: 'youHaveArrivedToTheLocation',
      desc: '',
      args: [],
    );
  }

  /// `has cancelled\nyour request`
  String get cancelledYourRequest {
    return Intl.message(
      'has cancelled\nyour request',
      name: 'cancelledYourRequest',
      desc: '',
      args: [],
    );
  }

  /// `replied to your\ncomment`
  String get repliedToYourComment {
    return Intl.message(
      'replied to your\ncomment',
      name: 'repliedToYourComment',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalization> load(Locale locale) => AppLocalization.load(locale);
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
