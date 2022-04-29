import 'package:flutter/material.dart';

import '../../../common/coins_constants_colors.dart';
import '../../domain/model/currency_model.dart';
import '../common/custom_about_info_widget.dart';
import '../common/custom_currency_details_page_card_widget.dart';

class CoinDetailsPage extends StatelessWidget {
  const CoinDetailsPage({
    required this.currency,
    Key? key,
  }) : super(key: key);

  final CurrencyModel currency;
  static const detailsPageAboutText = 'Sobre:';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(currency.currencyName.toUpperCase()),
          backgroundColor: CoinsConstantsColors.primaryColor,
        ),
        backgroundColor: CoinsConstantsColors.scaffoldBackground,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomCurrencyDetailsPageCardWidget(currency: currency),
                  CustomAboutInfoWidget(
                    detailsPageAboutText: detailsPageAboutText,
                    aboutText: currency.details.about,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
