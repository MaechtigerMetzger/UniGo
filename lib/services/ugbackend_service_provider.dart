import 'package:http/http.dart' as http;
import 'package:unigo_prototyp/services/model/nutzer.dart';

import 'model/object_not_found_exception.dart';

class LSServiceProvider {
  //static String host = "localhost:8000";
  //static String host = "10.0.2.2:8000";
  static String host = "193.174.29.13";
  static String apiPath = "/ugbackend/api/v1/";

  /* Nutzer */

  static Future<List<Nutzer>> getUsers() async {
    return await getObjectList<Nutzer>(
        resourcePath: "users.json", parseBody: nutzerListFromJson);
  }

  static Future<Nutzer> getUserById({required int id}) async {
    var result = await getObjectById<Nutzer>(
      id: id,
      resourcePath: "users",
      parseBody: nutzerFromJson,
    );

    if (result.isEmpty) {
      throw ObjectNotFoundException();
    }

    return result[0];
  }

  /* HELPER */

  static Future<List<T>> getObjectList<T>({
    required String resourcePath,
    required Function(String) parseBody,
  }) async {
    var url = Uri.http(host, '${apiPath}/${resourcePath}');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      List<T> data = parseBody(response.body);
      return (data);
    } else {
      return [];
    }
  }

  static Future<List<T>> getObjectById<T>(
      {required int id,
      required String resourcePath,
      required Function(String) parseBody}) async {
    var url = Uri.http(host, '${apiPath}/${resourcePath}/${id}.json');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      T object = parseBody(response.body);
      return ([object]);
    } else {
      return [];
    }
  }

  static Future<bool> createObject<T>({
    required T data,
    required Function(T) toJson,
    required String resourcePath,
  }) async {
    var url = Uri.http(host, '${apiPath}/${resourcePath}');
    String json = toJson(data);

    http.Response resonse = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json,
    );
    if (resonse.statusCode == 201) {
      return true;
    }
    return false;
  }

  static Future<bool> updateObjectById<T>({
    required int id,
    required T data,
    required Function(T) toJson,
    required String resourcePath,
  }) async {
    var url = Uri.http(host, '${apiPath}/${resourcePath}/${id}.json');
    String json = toJson(data);

    http.Response resonse = await http.put(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json,
    );
    if (resonse.statusCode == 200) {
      return true;
    }
    return false;
  }

  static Future<bool> deleteObjectById({
    required int id,
    required String resourcePath,
  }) async {
    var url = Uri.http(host, '${apiPath}/${resourcePath}/${id}.json');

    http.Response resonse = await http.delete(
      url,
    );
    if (resonse.statusCode == 204) {
      return true;
    }
    return false;
  }
}
