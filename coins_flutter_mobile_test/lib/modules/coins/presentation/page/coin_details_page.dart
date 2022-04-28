import 'package:flutter/material.dart';

import '../../common/coins_constants_colors.dart';
import '../../domain/model/currency_data_model.dart';

class CoinDetailsPage extends StatelessWidget {
  const CoinDetailsPage({
    required this.cryptocurrency,
    Key? key,
  }) : super(key: key);

  final CurrencyDataModel cryptocurrency;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(cryptocurrency.currencyName.toUpperCase()),
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
                                  cryptocurrency.imageUrl,
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
                                  Expanded(
                                    child: Text(
                                      cryptocurrency.symbol,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            CoinsConstantsColors.primaryColor,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      cryptocurrency.cotation,
                                      style:
                                          const TextStyle(color: Colors.green),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      cryptocurrency.details.fee.toString(),
                                      style:
                                          const TextStyle(color: Colors.green),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Sobre:',
                          style: TextStyle(
                              color: CoinsConstantsColors.primaryColor,
                              fontSize: 18),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Text(
                            cryptocurrency.details.about,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
