import 'package:flutter/material.dart';

import '../../domain/model/wallet_model.dart';
import '../../domain/use_case/get_coin_use_case.dart';
import '../state/coin_list_state.dart';

class CoinListController extends ValueNotifier<CoinListState> {
  CoinListController({
    required GetCoinUseCase getCoinUseCase,
  })  : _getCoinUseCase = getCoinUseCase,
        super(CoinListState.loading);

  final GetCoinUseCase _getCoinUseCase;
  late WalletModel coin;

  Future<void> getCoin() async {
    value = CoinListState.loading;
    try {
      coin = await _getCoinUseCase.call();
      value = CoinListState.success;
    } catch (e) {
      value = CoinListState.genericError;
    }
  }
}
