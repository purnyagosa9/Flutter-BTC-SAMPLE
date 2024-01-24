import 'package:bitcoin_tracker/app/routes/app_page.dart';
import 'package:bitcoin_tracker/app/utils/getx_injection.dart';
import 'package:bitcoin_tracker/presentation/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BTCTraker extends StatelessWidget {
  const BTCTraker({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: GetXInjections(),
      getPages: AppPages.routes,
      home: const HomePage(),
    );
  }
}
