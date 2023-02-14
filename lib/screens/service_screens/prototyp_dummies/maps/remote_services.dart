import 'package:http/http.dart' as http;

import 'nominatim.dart';

class RemoteServices {
  static var client = http.Client();




  // TODO Nominatim OpenStreetMap in Services integrieren
  // https://nominatim.openstreetmap.org/search?q=antoniusheim+cafe+fulda+deutschland&format=json

  static Future<List<Nominatim>> fetchCoordinates(String search) async {
    search = search.toLowerCase().trim();
    search = search.replaceAll(",", " ");
    search = search.replaceAll(RegExp(r"\s+"), " ");
    search = search.replaceAll(" ", "+");
    print(search);

    String uri_string = "https://nominatim.openstreetmap.org/search?q=" +
        search +
        "&format=json";
    Uri uri = Uri.parse(uri_string);

    //print(uri.authority);
    //print(uri.path);
    //print(uri.queryParameters);

    http.Response response = await client
        .get(Uri.https(uri.authority, uri.path, uri.queryParameters));

    //print(response.body);

    if (response.statusCode == 200) {
      var result = nominatimFromJson(response.body);
      return result;
    } else {
      return [];
    }
  }
}
