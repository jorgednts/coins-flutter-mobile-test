import '../../domain/model/wallet_model.dart';

mixin CoinsDataSource {
  Future<WalletModel> getCoin();
}