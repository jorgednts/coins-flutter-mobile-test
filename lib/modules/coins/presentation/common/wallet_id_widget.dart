import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class WalletIdWidget extends StatelessWidget {
  const WalletIdWidget({
    required this.walletId,
    Key? key,
  }) : super(key: key);

  final String walletId;

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
                    S.of(context).coinListPageWalletIdText,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, bottom: 10),
                  child: Text(
                    walletId,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
