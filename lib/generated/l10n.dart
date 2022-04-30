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

  /// `e-mail`
  String get loginPageEmail {
    return Intl.message(
      'e-mail',
      name: 'loginPageEmail',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get loginPagePassword {
    return Intl.message(
      'password',
      name: 'loginPagePassword',
      desc: '',
      args: [],
    );
  }

  /// `LOGIN`
  String get loginPageLogin {
    return Intl.message(
      'LOGIN',
      name: 'loginPageLogin',
      desc: '',
      args: [],
    );
  }

  /// `Welcome!`
  String get loginPageInfoTextInitState {
    return Intl.message(
      'Welcome!',
      name: 'loginPageInfoTextInitState',
      desc: '',
      args: [],
    );
  }

  /// `Invalid credentials, try again!`
  String get loginPageInfoTextCredentialError {
    return Intl.message(
      'Invalid credentials, try again!',
      name: 'loginPageInfoTextCredentialError',
      desc: '',
      args: [],
    );
  }

  /// `Successful login!`
  String get loginPageInfoTextSuccessfulLogin {
    return Intl.message(
      'Successful login!',
      name: 'loginPageInfoTextSuccessfulLogin',
      desc: '',
      args: [],
    );
  }

  /// `Loading...`
  String get loginPageInfoTextLoading {
    return Intl.message(
      'Loading...',
      name: 'loginPageInfoTextLoading',
      desc: '',
      args: [],
    );
  }

  /// `Fill in all fields!`
  String get loginPageInfoTextEmptyCredential {
    return Intl.message(
      'Fill in all fields!',
      name: 'loginPageInfoTextEmptyCredential',
      desc: '',
      args: [],
    );
  }

  /// `AN ERROR HAS OCCURED :(`
  String get coinListPageGenericErrorText {
    return Intl.message(
      'AN ERROR HAS OCCURED :(',
      name: 'coinListPageGenericErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Balance:`
  String get coinListPageUserBalanceText {
    return Intl.message(
      'Balance:',
      name: 'coinListPageUserBalanceText',
      desc: '',
      args: [],
    );
  }

  /// `Wallet ID:`
  String get coinListPageWalletIdText {
    return Intl.message(
      'Wallet ID:',
      name: 'coinListPageWalletIdText',
      desc: '',
      args: [],
    );
  }

  /// `Cryptocurrencies:`
  String get coinListPageCryptocurrencyText {
    return Intl.message(
      'Cryptocurrencies:',
      name: 'coinListPageCryptocurrencyText',
      desc: '',
      args: [],
    );
  }

  /// `About:`
  String get coinDetailsPageAboutText {
    return Intl.message(
      'About:',
      name: 'coinDetailsPageAboutText',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
      Locale.fromSubtags(languageCode: 'pt', countryCode: 'BR'),
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
