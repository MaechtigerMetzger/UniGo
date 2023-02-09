import 'dart:convert';

List<AppConfig> appconfigListFromJson(String str) =>
    List<AppConfig>.from(json.decode(str).map((x) => AppConfig.fromJson(x)));

String appconfigListToJson(List<AppConfig> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

AppConfig appconfigFromJson(String str) => AppConfig.fromJson(json.decode(str));

String appconfigToJson(AppConfig data) => json.encode(data.toJson());

class AppConfig {
  AppConfig({
    required this.id,
    required this.uuid,
    required this.profilname,
    required this.avatarId,
  });

  AppConfig.empty({
    this.id = 0,
    this.uuid = "",
    this.profilname = "",
    this.avatarId = 0,
  });

  int id;
  String uuid;
  String profilname;
  int avatarId;

  factory AppConfig.fromJson(Map<String, dynamic> json) => AppConfig(
        id: json["id"],
        uuid: json["uuid"],
        profilname: json["profilname"],
        avatarId: json["avatarId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "uuid": uuid,
        "profilname": profilname,
        "avatarId": avatarId,
      };
}
