extension ConvertToRealCurrencyForm on String {
  String convertToRealCurrencyForm() =>
      'R\$ ${double.parse(this).toStringAsFixed(2).replaceAll('.', ',')}';
}
