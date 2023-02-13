import 'package:unigo_prototyp/services/unigo_service.dart';

import '../model/nutzer.dart';

extension ServiceNutzerExtension on UniGoService {
  /* Nutzer */

  Future<List<Nutzer>> getNutzerList() async {
    return wrapper<List<Nutzer>, Nutzer>(
      method: methodGetList,
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
      method: methodGetObjectById,
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
      method: methodUpdateObjectById,
      id: id,
      data: data,
      initRTVal: false,
      resourcePath: "nutzer",
      objectFromJson: nutzerFromJson,
      listFromJson: nutzerListFromJson,
      objectToJson: nutzerToJson,
    );
  }

  Future<Nutzer> createNutzerById({required int id, required Nutzer data}) async {
    return wrapper<Nutzer, Nutzer>(
      method: methodCreateObjectById,
      id: id,
      data: data,
      initRTVal: Nutzer.empty(),
      resourcePath: "nutzer",
      objectFromJson: nutzerFromJson,
      listFromJson: nutzerListFromJson,
      objectToJson: nutzerToJson,
    );
  }

  Future<bool> deleteNutzerById({required int id}) async {
    return wrapper<bool, Nutzer>(
      method: methodDeleteObjectById,
      id: id,
      data: Nutzer.empty(),
      initRTVal: false,
      resourcePath: "nutzer",
      objectFromJson: nutzerFromJson,
      listFromJson: nutzerListFromJson,
      objectToJson: nutzerToJson,
    );
  }
}
