class CoinDetailsResponse {
  CoinDetailsResponse({
    required this.about,
    required this.fee,
  });

  CoinDetailsResponse.fromJson(Map<String, dynamic> json) {
    about = json['about'];
    fee = json['fee'];
  }

  late final String about;
  late final double fee;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['about'] = about;
    data['fee'] = fee;
    return data;
  }
}
