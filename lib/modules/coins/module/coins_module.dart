import 'package:flutter_modular/flutter_modular.dart';

import '../constants/coin_constants_routes.dart';
import '../data/data_source/coins_data_source.dart';
import '../data/data_source/coins_data_source_impl.dart';
import '../data/repository/coin_repository_impl.dart';
import '../domain/repository/coin_repository.dart';
import '../domain/use_case/get_coin_use_case.dart';
import '../domain/use_case/get_coin_use_case_impl.dart';
import '../presentation/controller/coin_list_controller.dart';
import '../presentation/page/coin_details_page.dart';
import '../presentation/page/coin_list_page.dart';

class CoinsModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton<CoinsDataSource>(
          (i) => CoinsDataSourceImpl(),
        ),
        Bind.lazySingleton<CoinRepository>(
          (i) => CoinRepositoryImpl(coinsDataSource: i()),
        ),
        Bind.lazySingleton<GetCoinUseCase>(
          (i) => GetCoinUseCaseImpl(coinRepository: i()),
        ),
        Bind.factory(
          (i) => CoinListController(getCoinUseCase: i()),
        )
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          CoinConstantsRoutes.coinListPage,
          child: (context, args) => const CoinListPage(),
        ),
        ChildRoute(
          CoinConstantsRoutes.coinDetailsPage,
          child: (context, args) => CoinDetailsPage(currency: args.data),
        ),
      ];
}
