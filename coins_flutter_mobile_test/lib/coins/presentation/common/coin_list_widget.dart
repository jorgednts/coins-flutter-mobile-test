import 'package:flutter/material.dart';

import '../../common/coins_constants_colors.dart';
import '../controller/coin_list_controller.dart';
import 'balance_card_widget.dart';
import 'wallet_id_widget.dart';

class CoinListWidget extends StatelessWidget {
  const CoinListWidget({
    required this.controller,
    Key? key,
  }) : super(key: key);

  final CoinListController controller;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.account_circle_rounded,
                        color: CoinsConstantsColors.primaryColor,
                      ),
                    ),
                    Text(
                      'Olá!',
                      style: TextStyle(
                        fontSize: 30,
                        color: CoinsConstantsColors.primaryColor,
                      ),
                    )
                  ],
                ),
                BalanceCardWidget(controller: controller),
                WalletIdWidget(controller: controller),
              ],
            ),
          ),
        ),
      );
}
