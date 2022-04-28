import '../../domain/model/coin_details_model.dart';
import '../../domain/model/coin_model.dart';
import '../../domain/model/currency_data_model.dart';
import '../model/coin_response.dart';

extension CoinResponseToCoinModel on CoinResponse {
  CoinModel toCoinModel() => CoinModel(
        message: message,
        walletId: walletId,
        userBalance: userBalance,
        data: data
            .map(
              (item) => CurrencyDataModel(
                currencyName: item.currencyName,
                cotation: item.cotation,
                symbol: item.symbol,
                imageUrl: item.imageUrl,
                details: CoinDetailsModel(
                  about: item.details.about,
                  fee: item.details.fee,
                ),
              ),
            )
            .toList(),
      );
}
