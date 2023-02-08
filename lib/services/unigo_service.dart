import 'package:unigo_prototyp/services/ugbackend_service_provider.dart';

import 'model/angebot.dart';
import 'model/nutzer.dart';
import 'model/object_not_found_exception.dart';

class UniGoService {
  /* Angebot */

  Future<List<Angebot>> getAngebotList() async {
    return wrapper<List<Angebot>, Angebot>(
      method: "getList",
      id: -1,
      data: Angebot.empty(datum: DateTime.now()),
      initRTVal: [],
      resourcePath: "angebot",
      objectFromJson: angebotFromJson,
      listFromJson: angebotListFromJson,
      objectToJson: angebotToJson,
    );
  }

  /* Nutzer */

  Future<List<Nutzer>> getNutzerList() async {
    return wrapper<List<Nutzer>, Nutzer>(
      method: "getList",
      id: -1,
      data: Nutzer.empty(),
      initRTVal: [],
      resourcePath: "nutzer",
      objectFromJson: nutzerFromJson,
      listFromJson: nutzerListFromJson,
      objectToJson: nutzerToJson,
    );
  }

  Future<Nutzer> getNutzerById({required int id}) async {
    return wrapper<Nutzer, Nutzer>(
      method: "getObjectById",
      id: id,
      data: Nutzer.empty(),
      initRTVal: Nutzer.empty(),
      resourcePath: "nutzer",
      objectFromJson: nutzerFromJson,
      listFromJson: nutzerListFromJson,
      objectToJson: nutzerToJson,
    );
  }

  Future<bool> updateNutzerById({required int id, required Nutzer data}) async {
    return wrapper<bool, Nutzer>(
      method: "updateObjectById",
      id: id,
      data: data,
      initRTVal: false,
      resourcePath: "nutzer",
      objectFromJson: nutzerFromJson,
      listFromJson: nutzerListFromJson,
      objectToJson: nutzerToJson,
    );
  }

  Future<bool> deleteNutzerById({required int id}) async {
    return wrapper<bool, Nutzer>(
      method: "deleteObjectById",
      id: id,
      data: Nutzer.empty(),
      initRTVal: false,
      resourcePath: "nutzer",
      objectFromJson: nutzerFromJson,
      listFromJson: nutzerListFromJson,
      objectToJson: nutzerToJson,
    );
  }

  // Hier alle CRUD Operationen

  Future<RT> wrapper<RT, T>({
    required String method,
    required int id,
    required T data,
    required RT initRTVal,
    required String resourcePath,
    required Function(String) listFromJson,
    required Function(String) objectFromJson,
    required Function(T) objectToJson,
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
}
