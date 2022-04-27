import 'package:flutter/material.dart';

import '../../data/data_source/coins_data_source.dart';
import '../../data/data_source/coins_data_source_impl.dart';
import '../../data/repository/coin_repository_impl.dart';
import '../../domain/repository/coin_repository.dart';
import '../../domain/use_case/get_coin_use_case.dart';
import '../../domain/use_case/get_coin_use_case_impl.dart';
import '../controller/coin_list_controller.dart';
import '../state/coin_list_state.dart';

class CoinListPage extends StatefulWidget {
  const CoinListPage({Key? key}) : super(key: key);

  @override
  State<CoinListPage> createState() => _CoinListPageState();
}

class _CoinListPageState extends State<CoinListPage> {
  late CoinsDataSource coinsDataSource;
  late CoinRepository coinRepository;
  late GetCoinUseCase getCoinUseCase;
  late CoinListController controller;

  @override
  void initState() {
    super.initState();
    coinsDataSource = CoinsDataSourceImpl();
    coinRepository = CoinRepositoryImpl(coinsDataSource: coinsDataSource);
    getCoinUseCase = GetCoinUseCaseImpl(coinRepository: coinRepository);
    controller = CoinListController(getCoinUseCase: getCoinUseCase);
    controller.getCoin();
  }

  @override
  Widget build(BuildContext context) => Container(
        child: ValueListenableBuilder<CoinListState>(
          valueListenable: controller,
          builder: (context, state, _) {
            switch (state) {
              case CoinListState.loading:
                return const CircularProgressIndicator();
              case CoinListState.success:
                return const Text('sucesso');
              case CoinListState.genericError:
                return const Text('erro');
            }
          },
        ),
      );
}
