import 'dart:convert';

import 'package:flutter/services.dart';

import '../../domain/model/coin_model.dart';
import '../mapper/remote_to_model.dart';
import '../model/coin_response.dart';
import 'coins_data_source.dart';

class CoinsDataSourceImpl implements CoinsDataSource {
  @override
  Future<CoinModel> getCoin() async {
    final response = await rootBundle
        .loadString('lib/modules/coins/data/data_source/criptomoedas.json');
    final data = await json.decode(response);
    final coinResponse = CoinResponse.fromJson(data);
    return coinResponse.toCoinModel();
  }
}
