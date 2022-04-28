import 'currency_data_model.dart';

class CoinModel {
  CoinModel({
    required this.message,
    required this.walletId,
    required this.userBalance,
    required this.data,
  });

  final String message;
  final String walletId;
  String userBalance;
  final List<CurrencyDataModel> data;
}
