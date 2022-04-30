import 'dart:convert';

import 'package:flutter/services.dart';

import '../../domain/model/wallet_model.dart';
import '../mapper/remote_to_model.dart';
import '../model/wallet_response.dart';
import 'coins_data_source.dart';

class CoinsDataSourceImpl implements CoinsDataSource {
  @override
  Future<WalletModel> getCoin() async {
    final response = await rootBundle
        .loadString('lib/modules/coins/data/data_source/criptomoedas.json');
    final data = await json.decode(response);
    final coinResponse = WalletResponse.fromJson(data);
    return coinResponse.toCoinModel();
  }
}
