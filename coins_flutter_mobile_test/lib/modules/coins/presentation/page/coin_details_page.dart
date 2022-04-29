import 'package:flutter/material.dart';

import '../../../common/coins_constants_colors.dart';
import '../../domain/model/currency_model.dart';
import '../common/custom_about_info_widget.dart';
import '../common/custom_detail_text_widget.dart';

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
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 80),
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 20),
                              child: Container(
                                height: 100,
                                child: Image.network(
                                  currency.imageUrl,
                                  loadingBuilder:
                                      (context, child, loadingProgress) {
                                    if (loadingProgress == null) {
                                      return child;
                                    }
                                    return const Center(
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 10),
                              child: Column(
                                children: [
                                  CustomDetailTextWidget(
                                      detailText: currency.symbol,
                                      textColor:
                                          CoinsConstantsColors.primaryColor),
                                  CustomDetailTextWidget(
                                      detailText: currency.cotation,
                                      textColor: Colors.green),
                                  CustomDetailTextWidget(
                                      detailText:
                                          currency.details.fee.toString(),
                                      textColor: Colors.green),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
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
