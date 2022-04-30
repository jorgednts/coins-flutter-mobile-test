import '../model/wallet_model.dart';

mixin GetCoinUseCase {
  Future<WalletModel> call();
}
