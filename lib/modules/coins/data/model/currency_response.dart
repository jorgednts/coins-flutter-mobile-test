import 'currency_details_response.dart';

class CurrencyResponse {
  CurrencyResponse({
    required this.currencyName,
    required this.cotation,
    required this.symbol,
    required this.imageUrl,
    required this.details,
  });

  CurrencyResponse.fromJson(Map<String, dynamic> json) :
    currencyName = json['currency_name'],
    cotation = json['cotation'],
    symbol = json['symbol'],
    imageUrl = json['image_url'],
    details = CurrencyDetailsResponse.fromJson(json['details']);

  final String currencyName;
  final String cotation;
  final String symbol;
  final String imageUrl;
  final CurrencyDetailsResponse details;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['currency_name'] = currencyName;
    data['cotation'] = cotation;
    data['symbol'] = symbol;
    data['image_url'] = imageUrl;
    data['details'] = details.toJson();
    return data;
  }
}
