import 'package:unigo_prototyp/services/model/buchung.dart';

import '../unigo_service.dart';

extension ServiceBuchungExtension on UniGoService {
  /* Buchung */

  Future<List<Buchung>> getBuchungList() async {
    return wrapper<List<Buchung>, Buchung>(
      method: methodGetList,
      id: -1,
      data: Buchung.empty(),
      initRTVal: [],
      resourcePath: "buchung",
      objectFromJson: buchungFromJson,
      listFromJson: buchungListFromJson,
      objectToJson: buchungToJson,
    );
  }

  Future<Buchung> getBuchungById({required int id}) async {
    return wrapper<Buchung, Buchung>(
      method: methodGetObjectById,
      id: id,
      data: Buchung.empty(),
      initRTVal: Buchung.empty(),
      resourcePath: "buchung",
      objectFromJson: buchungFromJson,
      listFromJson: buchungListFromJson,
      objectToJson: buchungToJson,
    );
  }

  Future<bool> updateBuchungById({required int id, required Buchung data}) async {
    return wrapper<bool, Buchung>(
      method: methodUpdateObjectById,
      id: id,
      data: data,
      initRTVal: false,
      resourcePath: "buchung",
      objectFromJson: buchungFromJson,
      listFromJson: buchungListFromJson,
      objectToJson: buchungToJson,
    );
  }

  Future<bool> createBuchungById({required int id, required Buchung data}) async {
    return wrapper<bool, Buchung>(
      method: methodCreateObjectById,
      id: id,
      data: data,
      initRTVal: false,
      resourcePath: "buchung",
      objectFromJson: buchungFromJson,
      listFromJson: buchungListFromJson,
      objectToJson: buchungToJson,
    );
  }

  Future<bool> deleteBuchungById({required int id}) async {
    return wrapper<bool, Buchung>(
      method: methodDeleteObjectById,
      id: id,
      data: Buchung.empty(),
      initRTVal: false,
      resourcePath: "buchung",
      objectFromJson: buchungFromJson,
      listFromJson: buchungListFromJson,
      objectToJson: buchungToJson,
    );
  }
}
