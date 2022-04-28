import '../model/coin_model.dart';
import '../repository/coin_repository.dart';
import 'get_coin_use_case.dart';

class GetCoinUseCaseImpl implements GetCoinUseCase {
  GetCoinUseCaseImpl({
    required CoinRepository coinRepository,
  }) : _coinRepository = coinRepository;

  final CoinRepository _coinRepository;

  CoinModel formatUserBalance(CoinModel coinModel) {
    final formattedUserBalance =
        'R\$ ${double.parse(coinModel.userBalance).toStringAsFixed(2).
    replaceAll('.', ',')}';
    coinModel.userBalance = formattedUserBalance;
    return coinModel;
  }

  @override
  Future<CoinModel> call() async {
    final coinModel = await _coinRepository.getCoin();
    return formatUserBalance(coinModel);
  }
}
