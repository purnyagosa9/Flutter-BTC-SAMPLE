import 'package:bitcoin_tracker/data/repositories/btc_current_price_repository.dart';
import 'package:get/get.dart';

class DependencyCreator {
  static init() {
    Get.lazyPut(() => BTCCurrentPrictRepositoryIml());
  }
}
