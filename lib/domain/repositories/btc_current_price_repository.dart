import 'package:bitcoin_tracker/data/models/btc_current_price_model.dart';

abstract class BTCCurrentPrictRepository {
  Future<BTCCurrentPriceModel> fetchCurrentPrice();
}
