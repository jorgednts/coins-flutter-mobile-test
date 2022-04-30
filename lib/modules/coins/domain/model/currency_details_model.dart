class CurrencyDetailsModel {
  CurrencyDetailsModel({
    required String about,
    required double fee,
  }) : _about = about, _fee = fee;

  String _about;
  double _fee;

  String get about => _about;

  double get fee => _fee;

}
