import '../../domain/model/coin_model.dart';

mixin CoinsDataSource {
  Future<CoinModel> getCoin();
}