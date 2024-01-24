import 'package:bitcoin_tracker/app/config/app_colors.dart';
import 'package:bitcoin_tracker/app/types/tab_types.dart';
// import 'package:bitcoin_tracker/presentation/controllers/current_price_binding.dart';
import 'package:bitcoin_tracker/presentation/pages/bitcoin/bitcoin_page.dart';
import 'package:bitcoin_tracker/presentation/pages/convert/convert_page.dart';
// import 'package:bitcoin_tracker/presentation/pages/convert/convert_page.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: TabType.values
            .map((e) => BottomNavigationBarItem(icon: e.icon, label: e.title))
            .toList(),
        inactiveColor: AppColors.lightGray,
        activeColor: AppColors.primary,
      ),
      tabBuilder: (context, index) {
        final type = TabType.values[index];
        switch (type) {
          case TabType.bitcoin:
            // CurrentPriceBinding().dependencies();
            return const BitcoinPage();
          case TabType.convert:
            // CurrentPriceBinding().dependencies();
            return const ConvertPage();
        }
      },
    );
  }
}
