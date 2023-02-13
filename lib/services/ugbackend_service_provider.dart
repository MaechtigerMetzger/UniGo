import 'dart:convert' show utf8;

import 'package:http/http.dart' as http;

class UGBackendServiceProvider {
  //static String host = "localhost:8000";
  //static String host = "10.0.2.2:8000";
  //static String host = "193.174.29.13";
  static String host = "unigo.informatik.hs-fulda.de";
  static String apiPath = "/ugbackend/api/v1";

  /* HELPER */

  static Future<RT> getObjectList<RT, T>({
    required String resourcePath,
    required Function(String) listFromJson,
  }) async {
    var url = Uri.https(host, '${apiPath}/${resourcePath}.json');
    var response = await http.get(url);
    String resUTF8 = utf8.decode(response.bodyBytes);

    if (response.statusCode == 200) {
      RT data = listFromJson(resUTF8);
      return (data);
    } else {
      return [] as RT;
    }
  }

  static Future<RT> getObjectById<RT, T>({
    required int id,
    required String resourcePath,
    required Function(String) objectFromJson,
  }) async {
    var url = Uri.https(host, '${apiPath}/${resourcePath}/${id}.json');
    var response = await http.get(url);
    print(response.headers);
    String resUTF8 = utf8.decode(response.bodyBytes);

    if (response.statusCode == 200) {
      T object = objectFromJson(resUTF8);
      return ([object] as RT);
    } else {
      return [] as RT;
    }
  }

  static Future<RT> createObject<RT, T>({
    required T data,
    required Function(T) objectToJson,
    required Function(String) objectFromJson,
    required String resourcePath,
  }) async {
    var url = Uri.https(host, '${apiPath}/${resourcePath}.json');

    String json = objectToJson(data);

    http.Response resonse = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json,
    );
    if (resonse.statusCode == 201) {
      return true as RT;
    }
    return false as RT;
  }

  static Future<RT> updateObjectById<RT, T>({
    required int id,
    required T data,
    required Function(T) objectToJson,
    required String resourcePath,
  }) async {
    var url = Uri.https(host, '${apiPath}/${resourcePath}/${id}.json');
    String json = objectToJson(data);

    http.Response resonse = await http.put(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json,
    );
    if (resonse.statusCode == 200) {
      return true as RT;
    }
    return false as RT;
  }

  static Future<RT> deleteObjectById<RT>({
    required int id,
    required String resourcePath,
  }) async {
    var url = Uri.https(host, '${apiPath}/${resourcePath}/${id}.json');

    http.Response resonse = await http.delete(
      url,
    );
    if (resonse.statusCode == 204) {
      return true as RT;
    }
    return false as RT;
  }
}
