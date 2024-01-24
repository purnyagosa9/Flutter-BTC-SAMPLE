import 'package:bitcoin_tracker/presentation/pages/bitcoin/bitcoin_page.dart';
import 'package:bitcoin_tracker/presentation/pages/bitcoinDetail/bitcoin_detail_page.dart';
import 'package:bitcoin_tracker/presentation/pages/convert/convert_page.dart';
import 'package:bitcoin_tracker/presentation/pages/home/home_page.dart';
import 'package:get/get.dart';

class AppPages {
  AppPages._();

  static final routes = [
    //Phase 1
    GetPage(
      name: '/HomePage',
      page: () => const HomePage(),
    ),
    GetPage(
      name: '/BitcoinPage',
      page: () => const BitcoinPage(),
    ),
    GetPage(
      name: '/ConvertPage',
      page: () => const ConvertPage(),
    ),
    GetPage(
      name: '/BitcoinDetailPage',
      page: () => const BitcoinDetailPage(currentPriceByCurrency: null),
    ),
  ];
}
