import 'dart:convert' show json, utf8;
import 'package:http/http.dart' as http;

import 'osrm.dart';

// http://router.project-osrm.org/route/v1/driving/13.388860,52.517037;13.397634,52.529407;13.428555,52.523219?overview=false

class OSRMServiceProvider {
  //static String host = "localhost:8000";
  //static String host = "10.0.2.2:8000";
  //static String host = "193.174.29.13";
  static String host = "router.project-osrm.org";
  static String apiPath = "/route/v1";
  static final queryParameters = {
    'overview': 'false',
    'steps': 'true',
  };

  /* HELPER */

  // https://router.project-osrm.org/route/v1/car/9.41188,50.63475;9.68522,50.56611?overview=false&steps=true

  static Future<Osrm> getRoute({
    required coordString,
    String resourcePath = "driving",
    required Function(String) objectFromJson,
  }) async {
    var url = Uri.http(
        host, '${apiPath}/${resourcePath}/${coordString}', queryParameters);
    print(url);

    var response = await http.get(url);
    String resUTF8 = utf8.decode(response.bodyBytes);
    if (response.statusCode == 200) {
      Osrm data = objectFromJson(resUTF8);
      data.printRoutes();
      return (data);
    } else {
      return Osrm.empty();
    }
  }
}
