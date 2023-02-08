import 'package:unigo_prototyp/services/ugbackend_service_provider.dart';

import 'model/nutzer.dart';
import 'model/object_not_found_exception.dart';

class UniGoService {
  /* Nutzer */

  Future<RT> wrapper<RT, T>({
    required String method,
    required int id,
    required T data,
    required RT initRTVal,
    required String resourcePath,
    required Function(String) listFromJson,
    required Function(String) objectFromJson,
    required Function(dynamic) objectToJson,
  }) async {
    RT result = initRTVal;

    switch (method) {
      case "getList":
        {
          RT result = await UGBackendServiceProvider.getObjectList<RT, T>(
            resourcePath: resourcePath,
            listFromJson: listFromJson,
          );

          return result;
        }
      case "getObjectById":
        {
          List<T> result =
              await UGBackendServiceProvider.getObjectById<List<T>, T>(
            id: id,
            resourcePath: resourcePath,
            objectFromJson: objectFromJson,
          );

          if (result!.isEmpty) {
            throw ObjectNotFoundException();
          }

          return result[0] as RT;
        }
      case "updateObjectById":
        {
          RT result = await UGBackendServiceProvider.updateObjectById<RT, T>(
            id: id,
            data: data,
            resourcePath: resourcePath,
            objectToJson: objectToJson,
          );
          return result;
        }
      case "deleteObjectById":
        {
          RT result = await UGBackendServiceProvider.deleteObjectById<RT>(
            id: id,
            resourcePath: resourcePath,
          );
          return result;
        }
    }

    return result;
  }

  Future<List<Nutzer>> getNutzerList() async {
    return await UGBackendServiceProvider.getObjectList<List<Nutzer>, Nutzer>(
      resourcePath: "nutzer",
      listFromJson: nutzerListFromJson,
    );
  }

  Future<Nutzer> getNutzerById({required int id}) async {
    var result =
        await UGBackendServiceProvider.getObjectById<List<Nutzer>, Nutzer>(
      id: id,
      resourcePath: "nutzer",
      objectFromJson: nutzerFromJson,
    );

    if (result.isEmpty) {
      throw ObjectNotFoundException();
    }

    return result[0];
  }

  Future<bool> updateNutzerById({required int id, required Nutzer data}) async {
    var result = await UGBackendServiceProvider.updateObjectById<bool, Nutzer>(
      id: id,
      data: data,
      resourcePath: "nutzer",
      objectToJson: nutzerToJson,
    );
    return result;
  }

  Future<bool> deleteNutzerById({required int id}) async {
    var result = await UGBackendServiceProvider.deleteObjectById(
      id: id,
      resourcePath: "nutzer",
    );
    return result;
  }
}
