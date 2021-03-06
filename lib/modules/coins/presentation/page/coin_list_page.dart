import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../common/coins_constants_colors.dart';
import '../../constants/coin_list_page_string_constants.dart';
import '../common/coin_list_widget.dart';
import '../common/custom_shimmer_widget.dart';
import '../controller/coin_list_controller.dart';
import '../state/coin_list_state.dart';

class CoinListPage extends StatefulWidget {
  const CoinListPage({Key? key}) : super(key: key);

  @override
  State<CoinListPage> createState() => _CoinListPageState();
}

class _CoinListPageState
    extends ModularState<CoinListPage, CoinListController> {
  @override
  void initState() {
    super.initState();
    controller.getCoin();
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
          valueListenable: controller,
          builder: (context, state, _) {
            switch (state) {
              case CoinListState.loading:
                return const CustomShimmerWidget();
              case CoinListState.success:
                return CoinListWidget(wallet: controller.coin);
              case CoinListState.genericError:
                return const Center(
                  child: Text(
                    LoginPageStringConstants.coinListGenericErrorText,
                    style: TextStyle(
                        color: CoinsConstantsColors.primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                );
            }
          },
        ),
      );
}
