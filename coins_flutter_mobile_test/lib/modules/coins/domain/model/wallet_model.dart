import 'currency_model.dart';

class WalletModel {
  WalletModel({
    required String message,
    required String walletId,
    required String userBalance,
    required List<CurrencyModel> data,
  })  : _message = message,
        _walletId = walletId,
        _userBalance = userBalance,
        _data = data;

  String _message;
  String _walletId;
  String _userBalance;
  List<CurrencyModel> _data;

  String get message => _message;

  String get walletId => _walletId;

  String get userBalance => _userBalance;

  List<CurrencyModel> get data => _data;

  set userBalance(String value) {
    _userBalance = value;
  }
}
