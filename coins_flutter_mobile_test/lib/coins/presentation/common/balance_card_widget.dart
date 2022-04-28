import 'package:flutter/material.dart';

import '../controller/coin_list_controller.dart';

class BalanceCardWidget extends StatelessWidget {
  const BalanceCardWidget({
    required this.controller,
    Key? key,
  }) : super(key: key);

  final CoinListController controller;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 10,
    ),
    child: Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Saldo Disponível:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                controller.coin!.userBalance,
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    ),
  );


}