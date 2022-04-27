import 'coin_details_response.dart';

class CurrencyDataResponse {
  CurrencyDataResponse({
    required this.currencyName,
    required this.cotation,
    required this.symbol,
    required this.imageUrl,
    required this.details,
  });

  CurrencyDataResponse.fromJson(Map<String, dynamic> json) {
    currencyName = json['currency_name'];
    cotation = json['cotation'];
    symbol = json['symbol'];
    imageUrl = json['image_url'];
    details = json['details'];
  }

  late final String currencyName;
  late final String cotation;
  late final String symbol;
  late final String imageUrl;
  late final CoinDetailsResponse details;

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
