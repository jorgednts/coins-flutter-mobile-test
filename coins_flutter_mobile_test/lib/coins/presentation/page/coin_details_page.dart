import 'package:flutter/material.dart';

import '../../domain/model/currency_data_model.dart';

class CoinDetailsPage extends StatelessWidget {
  const CoinDetailsPage({
    required this.currencyDataModel,
    Key? key,
  }) : super(key: key);

  final CurrencyDataModel currencyDataModel;

  @override
  Widget build(BuildContext context) => Container(
        child: Text(currencyDataModel.currencyName),
      );
}
