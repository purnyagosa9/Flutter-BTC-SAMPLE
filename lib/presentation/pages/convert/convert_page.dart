import 'package:bitcoin_tracker/presentation/controllers/current_price_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ConvertPage extends GetView<CurrentPriceController> {
  const ConvertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Convert'),
      ),
      child: Container(),
    );
  }
}
