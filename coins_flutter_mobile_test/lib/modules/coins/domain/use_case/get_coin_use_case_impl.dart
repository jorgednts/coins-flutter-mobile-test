import '../../utils/coin_extensions.dart';
import '../model/wallet_model.dart';
import '../repository/coin_repository.dart';
import 'get_coin_use_case.dart';

class GetCoinUseCaseImpl implements GetCoinUseCase {
  GetCoinUseCaseImpl({
    required CoinRepository coinRepository,
  }) : _coinRepository = coinRepository;

  final CoinRepository _coinRepository;

  @override
  Future<WalletModel> call() async {
    final walletModel = await _coinRepository.getCoin();
    walletModel.userBalance =
        walletModel.userBalance.convertToRealCurrencyForm();

    for (final data in walletModel.data) {
      data.cotation = data.cotation.convertToRealCurrencyForm();
    }
    return walletModel;
  }
}
