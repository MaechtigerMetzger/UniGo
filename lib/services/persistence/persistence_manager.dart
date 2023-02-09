import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:unigo_prototyp/services/controller/ug_state_controller.dart';

import 'app_config.dart';

class PersitenceManager {
  final String store_key = "appconfig";

  Future<AppConfig> loadStore() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String json = preferences.getString(store_key) ??
        appconfigToJson(
          AppConfig.empty(),
        );
    AppConfig config = appconfigFromJson(json);
    return config;
  }

  Future<bool> saveStore(AppConfig config) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String json = appconfigToJson(config);
    preferences.setString(store_key, json);
    return true;
  }
}
