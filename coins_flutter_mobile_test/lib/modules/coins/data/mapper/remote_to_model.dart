import '../../domain/model/currency_details_model.dart';
import '../../domain/model/currency_model.dart';
import '../../domain/model/wallet_model.dart';
import '../model/wallet_response.dart';

extension CoinResponseToCoinModel on WalletResponse {
  WalletModel toCoinModel() => WalletModel(
        message: message,
        walletId: walletId,
        userBalance: userBalance,
        data: data
            .map(
              (item) => CurrencyModel(
                currencyName: item.currencyName,
                cotation: item.cotation,
                symbol: item.symbol,
                imageUrl: item.imageUrl,
                details: CurrencyDetailsModel(
                  about: item.details.about,
                  fee: item.details.fee,
                ),
              ),
            )
            .toList(),
      );
}
