import 'currency_details_model.dart';

class CurrencyModel {
  CurrencyModel({
    required String currencyName,
    required String cotation,
    required String symbol,
    required String imageUrl,
    required CurrencyDetailsModel details,
  })  : _currencyName = currencyName,
        _cotation = cotation,
        _symbol = symbol,
        _imageUrl = imageUrl,
        _details = details;

  String _currencyName;
  String _cotation;
  String _symbol;
  String _imageUrl;
  CurrencyDetailsModel _details;

  set cotation(String value) {
    _cotation = value;
  }

  String get currencyName => _currencyName;

  String get cotation => _cotation;

  String get symbol => _symbol;

  String get imageUrl => _imageUrl;

  CurrencyDetailsModel get details => _details;
}
