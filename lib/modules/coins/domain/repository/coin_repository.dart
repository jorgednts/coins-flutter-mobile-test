import '../model/wallet_model.dart';

mixin CoinRepository {
Future<WalletModel> getCoin();
}