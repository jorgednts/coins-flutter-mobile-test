import 'dart:convert';

import 'package:flutter/services.dart';

import '../model/coin_response.dart';
import 'coins_data_source.dart';

class CoinsDataSourceImpl implements CoinsDataSource {
  @override
  Future<CoinResponse> getCoinList() async {
    final response =
        await rootBundle.loadString('lib/coins/data/criptomoedas.json');
    final data = await json.decode(response);
    final coinResponse = CoinResponse.fromJson(data);
    return coinResponse;
  }

}
