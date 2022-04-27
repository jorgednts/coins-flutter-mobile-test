import '../model/coin_model.dart';
import '../repository/coin_repository.dart';
import 'get_coin_use_case.dart';

class GetCoinUseCaseImpl implements GetCoinUseCase {
  GetCoinUseCaseImpl({
    required CoinRepository coinRepository,
  }) : _coinRepository = coinRepository ;

  final CoinRepository _coinRepository;

  @override
  Future<CoinModel> call() async =>_coinRepository.getCoin();
}
