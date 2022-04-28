import '../model/coin_model.dart';
import '../repository/coin_repository.dart';
import 'get_coin_use_case.dart';

class GetCoinUseCaseImpl implements GetCoinUseCase {
  GetCoinUseCaseImpl({
    required CoinRepository coinRepository,
  }) : _coinRepository = coinRepository;

  final CoinRepository _coinRepository;

  CoinModel formatNumbers(CoinModel coinModel) {
    final formattedUserBalance =
        '\$ ${double.parse(coinModel.userBalance).toStringAsFixed(2)
        .replaceAll('.', ',')}';
    coinModel.userBalance = formattedUserBalance;

    for (final data in coinModel.data) {
      final formattedCotation =
          '\$ ${double.parse(data.cotation).toString().replaceAll('.', ',')}';
      data.cotation = formattedCotation;
    }

    return coinModel;
  }

  @override
  Future<CoinModel> call() async {
    final coinModel = await _coinRepository.getCoin();
    return formatNumbers(coinModel);
  }
}
