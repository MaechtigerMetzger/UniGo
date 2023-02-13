import 'package:get/get.dart';

import '../persistence/app_config.dart';
import '../persistence/persistence_manager.dart';

class UGStateController extends GetxController {
  // einfacher Ansatz, um auf (beliebige) Veränderungen zu reagieren
  var somethingChanged = 0.obs;
  var selectedPage = 0.obs; // selected Pag in BottomNavigationBar
  late AppConfig appConfig;
  bool appConfigLoaded = false; // wenn geladen/wenn gespeichert

  PersitenceManager persistenceManager = PersitenceManager();

  @override
  void onInit() {
    super.onInit();
    //loadStore();
  }

  /* global change */

  void change() {
    somethingChanged++;
  }

  /* persistence */

  void loadStore() {
    appConfigLoaded = false;
    persistenceManager.loadStore().then((value) {
      appConfig = value;
      appConfigLoaded = true;
    });
  }

  void saveStore() {
    persistenceManager
        .saveStore(appConfig)
        .then((value) => appConfigLoaded = value);
  }
}
