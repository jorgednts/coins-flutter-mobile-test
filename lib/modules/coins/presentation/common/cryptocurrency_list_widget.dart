import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../generated/l10n.dart';
import '../../../common/coins_constants_colors.dart';
import '../../constants/coin_constants_routes.dart';
import '../../domain/model/currency_model.dart';

class CryptocurrencyListWidget extends StatelessWidget {
  const CryptocurrencyListWidget({
    required this.currencyList,
    Key? key,
  }) : super(key: key);

  final List<CurrencyModel> currencyList;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    S.of(context).coinListPageCryptocurrencyText,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                GridView.builder(
                  padding: const EdgeInsets.all(10),
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemCount: currencyList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 20, crossAxisCount: 3),
                  itemBuilder: (context, index) => Container(
                    width: MediaQuery.of(context).size.width,
                    child: GestureDetector(
                      onTap: () {
                        Modular.to.pushNamed(
                            CoinConstantsRoutes.coinDetails,
                            arguments: currencyList[index]);
                      },
                      child: Card(
                        color: CoinsConstantsColors.primaryColor,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5, top: 5),
                                child: Text(
                                  currencyList[index].symbol,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Image.network(
                                  currencyList[index].imageUrl,
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
