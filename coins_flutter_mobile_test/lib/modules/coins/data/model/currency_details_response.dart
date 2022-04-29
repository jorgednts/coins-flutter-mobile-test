class CurrencyDetailsResponse {
  CurrencyDetailsResponse({
    required this.about,
    required this.fee,
  });

  CurrencyDetailsResponse.fromJson(Map<String, dynamic> json)
      : about = json['about'],
        fee = json['fee'];

  final String about;
  final double fee;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['about'] = about;
    data['fee'] = fee;
    return data;
  }
}
