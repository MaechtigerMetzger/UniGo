import '../model/profil.dart';
import '../unigo_service.dart';

extension ServiceProfilExtension on UniGoService {
  /* Profil */

  Future<List<Profil>> getProfilList() async {
    return wrapper<List<Profil>, Profil>(
      method: methodGetList,
      id: -1,
      data: Profil.empty(),
      initRTVal: [],
      resourcePath: "profil",
      objectFromJson: profilFromJson,
      listFromJson: profilListFromJson,
      objectToJson: profilToJson,
    );
  }

  Future<Profil> getProfilById({required int id}) async {
    return wrapper<Profil, Profil>(
      method: methodGetObjectById,
      id: id,
      data: Profil.empty(),
      initRTVal: Profil.empty(),
      resourcePath: "profil",
      objectFromJson: profilFromJson,
      listFromJson: profilListFromJson,
      objectToJson: profilToJson,
    );
  }

  Future<bool> updateProfilById({required int id, required Profil data}) async {
    return wrapper<bool, Profil>(
      method: methodUpdateObjectById,
      id: id,
      data: data,
      initRTVal: false,
      resourcePath: "profil",
      objectFromJson: profilFromJson,
      listFromJson: profilListFromJson,
      objectToJson: profilToJson,
    );
  }

  Future<bool> createProfilById({required int id, required Profil data}) async {
    return wrapper<bool, Profil>(
      method: methodCreateObjectById,
      id: id,
      data: data,
      initRTVal: false,
      resourcePath: "profil",
      objectFromJson: profilFromJson,
      listFromJson: profilListFromJson,
      objectToJson: profilToJson,
    );
  }

  Future<bool> deleteProfilById({required int id}) async {
    return wrapper<bool, Profil>(
      method: methodDeleteObjectById,
      id: id,
      data: Profil.empty(),
      initRTVal: false,
      resourcePath: "profil",
      objectFromJson: profilFromJson,
      listFromJson: profilListFromJson,
      objectToJson: profilToJson,
    );
  }
}
