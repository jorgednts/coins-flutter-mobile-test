import 'package:flutter/material.dart';

import '../../../common/coins_constants_colors.dart';
import '../../domain/model/wallet_model.dart';
import 'balance_card_widget.dart';
import 'cryptocurrency_list_widget.dart';
import 'wallet_id_widget.dart';

class CoinListWidget extends StatelessWidget {
  const CoinListWidget({
    required this.wallet,
    Key? key,
  }) : super(key: key);

  final WalletModel wallet;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text(
                  wallet.message,
                  style: const TextStyle(
                    fontSize: 30,
                    color: CoinsConstantsColors.primaryColor,
                  ),
                ),
              ),
              BalanceCardWidget(userBalance: wallet.userBalance),
              WalletIdWidget(walletId: wallet.walletId),
              CryptocurrencyListWidget(currencyList: wallet.data),
            ],
          ),
        ),
      );
}
