extension ConvertToRealCurrencyForm on String {
  String convertToRealCurrencyForm() =>
      'R\$ ${double.parse(this).toString().replaceAll('.', ',')}';
}
