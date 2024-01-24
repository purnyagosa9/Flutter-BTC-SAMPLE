import 'package:bitcoin_tracker/data/models/btc_current_price_model.dart';
import 'package:bitcoin_tracker/data/providers/network/apis/btc_current_price_api.dart';
import 'package:bitcoin_tracker/domain/repositories/btc_current_price_repository.dart';

class BTCCurrentPrictRepositoryIml extends BTCCurrentPrictRepository {
  @override
  Future<BTCCurrentPriceModel> fetchCurrentPrice() async {
    final response = await BTCCurrentPriceAPI.fetchCurrentPrice().request();
    return BTCCurrentPriceModel.fromJson(response);
  }
}
