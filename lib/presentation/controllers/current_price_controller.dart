import 'package:bitcoin_tracker/data/models/btc_current_price_model.dart';
import 'package:bitcoin_tracker/domain/entities/btc_current_price.dart';
// import 'package:bitcoin_tracker/domain/usecases/fetch_current_price_use_case.dart';
import 'package:get/get.dart';

var mockJsonData = {
  "time": {
    "updated": "Jan 24, 2024 10:27:33 UTC",
    "updatedISO": "2024-01-24T10:27:33+00:00",
    "updateduk": "Jan 24, 2024 at 10:27 GMT"
  },
  "disclaimer":
      "This data was produced from the CoinDesk Bitcoin Price Index (USD). Non-USD currency data converted using hourly conversion rate from openexchangerates.org",
  "chartName": "Bitcoin",
  "bpi": {
    "USD": {
      "code": "USD",
      "symbol": "&#36;",
      "rate": "40,089.863",
      "description": "United States Dollar",
      "rate_float": 40089.8628
    },
    "GBP": {
      "code": "GBP",
      "symbol": "&pound;",
      "rate": "31,407.16",
      "description": "British Pound Sterling",
      "rate_float": 31407.1602
    },
    "EUR": {
      "code": "EUR",
      "symbol": "&euro;",
      "rate": "36,770.583",
      "description": "Euro",
      "rate_float": 36770.5825
    }
  }
};

class CurrentPriceController extends GetxController {
  // CurrentPriceController(this._fetchCurrentPriceUseCase);
  // final FetchCurrentPriceUseCase _fetchCurrentPriceUseCase;
  final currentPriceData = Rx<BTCCurrentPrice?>(null);
  Rx<bool> onLoading = false.obs;

  fetchData() async {
    // final newData = await _fetchCurrentPriceUseCase.execute();
    // currentPriceData.value = newData;
    onLoading.value = true;
    currentPriceData.value = BTCCurrentPriceModel.fromJson(mockJsonData);
    onLoading.value = false;

    update();
  }
}
