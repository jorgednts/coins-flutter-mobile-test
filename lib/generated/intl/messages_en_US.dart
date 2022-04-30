// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en_US locale. All the
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
  String get localeName => 'en_US';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "coinDetailsPageAboutText":
            MessageLookupByLibrary.simpleMessage("About:"),
        "coinListPageCryptocurrencyText":
            MessageLookupByLibrary.simpleMessage("Cryptocurrencies:"),
        "coinListPageGenericErrorText":
            MessageLookupByLibrary.simpleMessage("AN ERROR HAS OCCURED :("),
        "coinListPageUserBalanceText":
            MessageLookupByLibrary.simpleMessage("Balance:"),
        "coinListPageWalletIdText":
            MessageLookupByLibrary.simpleMessage("Wallet ID:"),
        "loginPageEmail": MessageLookupByLibrary.simpleMessage("e-mail"),
        "loginPageInfoTextCredentialError":
            MessageLookupByLibrary.simpleMessage(
                "Invalid credentials, try again!"),
        "loginPageInfoTextEmptyCredential":
            MessageLookupByLibrary.simpleMessage("Fill in all fields!"),
        "loginPageInfoTextInitState":
            MessageLookupByLibrary.simpleMessage("Welcome!"),
        "loginPageInfoTextLoading":
            MessageLookupByLibrary.simpleMessage("Loading..."),
        "loginPageInfoTextSuccessfulLogin":
            MessageLookupByLibrary.simpleMessage("Successful login!"),
        "loginPageLogin": MessageLookupByLibrary.simpleMessage("LOGIN"),
        "loginPagePassword": MessageLookupByLibrary.simpleMessage("password")
      };
}
