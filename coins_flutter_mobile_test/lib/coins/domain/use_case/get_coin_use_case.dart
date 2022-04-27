import '../model/coin_model.dart';

mixin GetCoinUseCase {
  Future<CoinModel> call();
}
