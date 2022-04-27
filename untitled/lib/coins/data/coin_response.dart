import 'currency_data_response.dart';

class CoinResponse {
  CoinResponse({
    required this.message,
    required this.walletId,
    required this.userBalance,
    required this.data,
  });

  CoinResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    walletId = json['wallet_id'];
    userBalance = json['user_balance'];
    if (json['data'] != null) {
      data = <CurrencyDataResponse>[];
      json['data'].forEach((item) {
        data.add(CurrencyDataResponse.fromJson(item));
      });
    }
  }

  late final String message;
  late final String walletId;
  late final String userBalance;
  late final List<CurrencyDataResponse> data;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['message'] = message;
    data['wallet_id'] = walletId;
    data['user_balance'] = userBalance;
    data['data'] = this.data.map((item) => item.toJson()).toList();
    return data;
  }
}
