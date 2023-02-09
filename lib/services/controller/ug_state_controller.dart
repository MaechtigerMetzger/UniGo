import 'package:get/get.dart';

import '../persistence/app_config.dart';
import '../persistence/persistence_manager.dart';

class UGStateController extends GetxController {
  // einfacher Ansatz, um auf (beliebige) Veränderungen zu reagieren
  var somethingChanged = 0.obs;
  late AppConfig appConfig;

  PersitenceManager persistenceManager = PersitenceManager();

  @override
  void onInit() {
    super.onInit();
    loadStore();
  }

  /* global change */

  void change() {
    somethingChanged++;
  }

  /* persistence */

  void loadStore() async {
    appConfig = await persistenceManager.loadStore();
  }

  void saveStore() async {
    bool _ = await persistenceManager.saveStore(appConfig);
  }
}
