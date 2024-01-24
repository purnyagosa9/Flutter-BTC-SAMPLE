import 'package:bitcoin_tracker/app/config/app_text_styles.dart';
import 'package:bitcoin_tracker/data/models/btc_current_price_model.dart';
import 'package:bitcoin_tracker/presentation/controllers/current_price_controller.dart';
import 'package:bitcoin_tracker/presentation/pages/bitcoinDetail/bitcoin_detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BitcoinPage extends StatefulWidget {
  const BitcoinPage({Key? key}) : super(key: key);

  @override
  State<BitcoinPage> createState() => _BitcoinPageState();
}

class _BitcoinPageState extends State<BitcoinPage> {
  final currentPriceController = Get.put(CurrentPriceController());

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await currentPriceController.fetchData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        child: (currentPriceController.onLoading.value ||
                currentPriceController.currentPriceData.value == null)
            ? const Center(
                child: CircularProgressIndicator(
                color: Colors.black,
              ))
            : CupertinoPageScaffold(
                navigationBar: const CupertinoNavigationBar(
                  middle: Text('Bitcoin'),
                ),
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    Currency? dataByIndex;
                    switch (index) {
                      case 0:
                        dataByIndex = currentPriceController
                            .currentPriceData.value!.bpi!.uSD!;
                        break;
                      case 1:
                        dataByIndex = currentPriceController
                            .currentPriceData.value!.bpi!.gBP!;
                        break;
                      case 2:
                        dataByIndex = currentPriceController
                            .currentPriceData.value!.bpi!.eUR!;
                        break;
                    }

                    return GestureDetector(
                      onTap: () {
                        Get.to(() => BitcoinDetailPage(
                            currentPriceByCurrency: dataByIndex));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'BTC',
                                  style: AppTextStyles.title1,
                                ),
                                Text(
                                  ' / ${dataByIndex!.code}',
                                  style: AppTextStyles.body1,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      dataByIndex.rate!,
                                      style: AppTextStyles.body1,
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      dataByIndex.rate!,
                                      style: AppTextStyles.body2,
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 15),
                                Text(
                                  '>',
                                  style: AppTextStyles.body1,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
      ),
    );
  }
}
