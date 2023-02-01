import 'package:unigo_prototyp/services/ugbackend_service_provider.dart';

import 'model/nutzer.dart';
import 'model/object_not_found_exception.dart';

class UniGoService {
  /* Nutzer */

  Future<List<Nutzer>> getNutzerList() async {
    return await UGBackendServiceProvider.getObjectList<Nutzer>(
        resourcePath: "nutzer.json", parseBody: nutzerListFromJson);
  }

  Future<Nutzer> getNutzerById({required int id}) async {
    var result = await UGBackendServiceProvider.getObjectById<Nutzer>(
      id: id,
      resourcePath: "nutzer",
      parseBody: nutzerFromJson,
    );

    if (result.isEmpty) {
      throw ObjectNotFoundException();
    }

    return result[0];
  }
}
