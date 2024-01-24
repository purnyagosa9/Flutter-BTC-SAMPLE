import 'package:bitcoin_tracker/presentation/controllers/current_price_controller.dart';
import 'package:get/get.dart';

class GetXInjections implements Bindings {
  @override
  void dependencies() {
    //Set binding to use on initApp
    Get.put(CurrentPriceController());
  }
}
