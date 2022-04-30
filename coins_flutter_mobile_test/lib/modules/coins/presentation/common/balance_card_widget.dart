import 'package:flutter/material.dart';

import '../../constants/coin_list_page_string_constants.dart';

class BalanceCardWidget extends StatelessWidget {
  const BalanceCardWidget({
    required this.userBalance,
    Key? key,
  }) : super(key: key);

  final String userBalance;

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
                const Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      LoginPageStringConstants.coinListUserBalanceText,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        // fontSize: 13,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Container(
                      child: Text(
                        userBalance,
                        style: const TextStyle(fontSize: 30),
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
