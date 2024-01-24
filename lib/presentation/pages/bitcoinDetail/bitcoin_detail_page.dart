import 'package:bitcoin_tracker/app/config/app_text_styles.dart';
import 'package:bitcoin_tracker/data/models/btc_current_price_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BitcoinDetailPage extends StatelessWidget {
  final Currency? currentPriceByCurrency;

  const BitcoinDetailPage({super.key, required this.currentPriceByCurrency});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('BTC / ${currentPriceByCurrency!.code}'),
      ),
      child: SafeArea(
        child: Scaffold(
          body: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  currentPriceByCurrency!.rate!,
                  style: AppTextStyles.title1,
                  maxLines: null,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
