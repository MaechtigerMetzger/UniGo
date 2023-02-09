import '../model/nachricht.dart';
import '../unigo_service.dart';

extension ServiceNachrichtExtension on UniGoService {
  /* Nachricht */

  Future<List<Nachricht>> getNachrichtList() async {
    return wrapper<List<Nachricht>, Nachricht>(
      method: methodGetList,
      id: -1,
      data: Nachricht.empty(datumZeit: DateTime.now()),
      initRTVal: [],
      resourcePath: "nachricht",
      objectFromJson: nachrichtFromJson,
      listFromJson: nachrichtListFromJson,
      objectToJson: nachrichtToJson,
    );
  }

  Future<Nachricht> getNachrichtById({required int id}) async {
    return wrapper<Nachricht, Nachricht>(
      method: methodGetObjectById,
      id: id,
      data: Nachricht.empty(datumZeit: DateTime.now()),
      initRTVal: Nachricht.empty(datumZeit: DateTime.now()),
      resourcePath: "nachricht",
      objectFromJson: nachrichtFromJson,
      listFromJson: nachrichtListFromJson,
      objectToJson: nachrichtToJson,
    );
  }

  Future<bool> updateNachrichtById(
      {required int id, required Nachricht data}) async {
    return wrapper<bool, Nachricht>(
      method: methodUpdateObjectById,
      id: id,
      data: data,
      initRTVal: false,
      resourcePath: "nachricht",
      objectFromJson: nachrichtFromJson,
      listFromJson: nachrichtListFromJson,
      objectToJson: nachrichtToJson,
    );
  }

  Future<bool> createNachrichtById(
      {required int id, required Nachricht data}) async {
    return wrapper<bool, Nachricht>(
      method: methodCreateObjectById,
      id: id,
      data: data,
      initRTVal: false,
      resourcePath: "nachricht",
      objectFromJson: nachrichtFromJson,
      listFromJson: nachrichtListFromJson,
      objectToJson: nachrichtToJson,
    );
  }

  Future<bool> deleteNachrichtById({required int id}) async {
    return wrapper<bool, Nachricht>(
      method: methodDeleteObjectById,
      id: id,
      data: Nachricht.empty(datumZeit: DateTime.now()),
      initRTVal: false,
      resourcePath: "nachricht",
      objectFromJson: nachrichtFromJson,
      listFromJson: nachrichtListFromJson,
      objectToJson: nachrichtToJson,
    );
  }
}
