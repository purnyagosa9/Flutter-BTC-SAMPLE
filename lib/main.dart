import 'package:bitcoin_tracker/app/utils/dependency.dart';
import 'package:bitcoin_tracker/presentation/app.dart';
import 'package:flutter/material.dart';

void main() async {
  DependencyCreator.init();
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(const BTCTraker());
}

//Initialize all services before incoming on app
initServices() async {
  debugPrint('----- starting services -----');
  // await Get.putAsync(() => LocalStorageService().init());
  debugPrint('----- All services started -----');
}
