import 'currency_response.dart';

class WalletResponse {
  WalletResponse({
    required this.message,
    required this.walletId,
    required this.userBalance,
    required this.data,
  });

  WalletResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    walletId = json['wallet_id'];
    userBalance = json['user_balance'];
    if (json['data'] != null) {
      data = <CurrencyResponse>[];
      json['data'].forEach((item) {
        data.add(CurrencyResponse.fromJson(item));
      });
    }
  }

  late final String message;
  late final String walletId;
  late final String userBalance;
  late final List<CurrencyResponse> data;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['message'] = message;
    data['wallet_id'] = walletId;
    data['user_balance'] = userBalance;
    data['data'] = this.data.map((item) => item.toJson()).toList();
    return data;
  }
}
