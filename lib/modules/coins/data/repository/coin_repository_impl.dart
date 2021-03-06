import '../../domain/model/wallet_model.dart';
import '../../domain/repository/coin_repository.dart';
import '../data_source/coins_data_source.dart';

class CoinRepositoryImpl implements CoinRepository {
  CoinRepositoryImpl({
    required CoinsDataSource coinsDataSource,
  }) : _coinsDataSource = coinsDataSource;

  final CoinsDataSource _coinsDataSource;

  @override
  Future<WalletModel> getCoin() async => _coinsDataSource.getCoin();
}
