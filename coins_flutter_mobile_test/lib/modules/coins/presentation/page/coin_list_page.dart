import 'package:flutter/material.dart';

import '../../../common/coins_constants_colors.dart';
import '../../data/data_source/coins_data_source.dart';
import '../../data/data_source/coins_data_source_impl.dart';
import '../../data/repository/coin_repository_impl.dart';
import '../../domain/repository/coin_repository.dart';
import '../../domain/use_case/get_coin_use_case.dart';
import '../../domain/use_case/get_coin_use_case_impl.dart';
import '../common/coin_list_page_string_constants.dart';
import '../common/coin_list_widget.dart';
import '../common/custom_shimmer_widget.dart';
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
  late CoinListController coinListController;

  @override
  void initState() {
    super.initState();
    coinsDataSource = CoinsDataSourceImpl();
    coinRepository = CoinRepositoryImpl(coinsDataSource: coinsDataSource);
    getCoinUseCase = GetCoinUseCaseImpl(coinRepository: coinRepository);
    coinListController = CoinListController(getCoinUseCase: getCoinUseCase);
    coinListController.getCoin();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: CoinsConstantsColors.primaryColor,
        ),
        backgroundColor: CoinsConstantsColors.scaffoldBackground,
        body: ValueListenableBuilder<CoinListState>(
          valueListenable: coinListController,
          builder: (context, state, _) {
            switch (state) {
              case CoinListState.loading:
                return const CustomShimmerWidget();
              case CoinListState.success:
                return CoinListWidget(wallet: coinListController.coin);
              case CoinListState.genericError:
                return const Padding(
                  padding: EdgeInsets.only(top: 200),
                  child:
                      Text(LoginPageStringConstants.coinListGenericErrorText),
                );
            }
          },
        ),
      );
}
