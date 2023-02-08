import '../model/angebot.dart';
import '../unigo_service.dart';

extension ServiceAngebotExtension on UniGoService {
  /* Angebot */

  Future<List<Angebot>> getAngebotList() async {
    return wrapper<List<Angebot>, Angebot>(
      method: methodGetList,
      id: -1,
      data: Angebot.empty(datum: DateTime.now()),
      initRTVal: [],
      resourcePath: "angebot",
      objectFromJson: angebotFromJson,
      listFromJson: angebotListFromJson,
      objectToJson: angebotToJson,
    );
  }

  Future<Angebot> getAngebotById({required int id}) async {
    return wrapper<Angebot, Angebot>(
      method: methodGetObjectById,
      id: id,
      data: Angebot.empty(datum: DateTime.now()),
      initRTVal: Angebot.empty(datum: DateTime.now()),
      resourcePath: "angebot",
      objectFromJson: angebotFromJson,
      listFromJson: angebotListFromJson,
      objectToJson: angebotToJson,
    );
  }

  Future<bool> updateAngebotById(
      {required int id, required Angebot data}) async {
    return wrapper<bool, Angebot>(
      method: methodUpdateObjectById,
      id: id,
      data: data,
      initRTVal: false,
      resourcePath: "angebot",
      objectFromJson: angebotFromJson,
      listFromJson: angebotListFromJson,
      objectToJson: angebotToJson,
    );
  }

  Future<bool> createAngebotById(
      {required int id, required Angebot data}) async {
    return wrapper<bool, Angebot>(
      method: methodCreateObjectById,
      id: id,
      data: data,
      initRTVal: false,
      resourcePath: "angebot",
      objectFromJson: angebotFromJson,
      listFromJson: angebotListFromJson,
      objectToJson: angebotToJson,
    );
  }

  Future<bool> deleteAngebotById({required int id}) async {
    return wrapper<bool, Angebot>(
      method: methodDeleteObjectById,
      id: id,
      data: Angebot.empty(datum: DateTime.now()),
      initRTVal: false,
      resourcePath: "angebot",
      objectFromJson: angebotFromJson,
      listFromJson: angebotListFromJson,
      objectToJson: angebotToJson,
    );
  }
}
