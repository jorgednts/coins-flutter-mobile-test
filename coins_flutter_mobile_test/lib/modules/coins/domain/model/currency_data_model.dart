import 'coin_details_model.dart';

class CurrencyDataModel {
  CurrencyDataModel({
    required this.currencyName,
    required this.cotation,
    required this.symbol,
    required this.imageUrl,
    required this.details,
  });

  final String currencyName;
  late String cotation;
  final String symbol;
  final String imageUrl;
  final CoinDetailsModel details;
}
