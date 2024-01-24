import 'package:bitcoin_tracker/data/models/btc_current_price_model.dart';

class BTCCurrentPrice {
  BTCCurrentPrice({
    this.time,
    this.disclaimer,
    this.chartName,
    this.bpi,
  });

  Time? time;
  String? disclaimer;
  String? chartName;
  Bpi? bpi;
}
