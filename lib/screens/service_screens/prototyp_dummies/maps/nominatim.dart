// To parse this JSON data, do
//
//     final nominatim = nominatimFromJson(jsonString);

import 'dart:convert';

List<Nominatim> nominatimFromJson(String str) =>
    List<Nominatim>.from(json.decode(str).map((x) => Nominatim.fromJson(x)));

String nominatimToJson(List<Nominatim> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Nominatim {
  Nominatim({
    this.placeId,
    this.licence,
    this.osmType,
    this.osmId,
    this.boundingbox,
    this.lat,
    this.lon,
    this.displayName,
    this.nominatimClass,
    this.type,
    this.importance,
    this.icon,
  });

  int? placeId;
  String? licence;
  String? osmType;
  int? osmId;
  List<String>? boundingbox;
  String? lat;
  String? lon;
  String? displayName;
  String? nominatimClass;
  String? type;
  double? importance;
  String? icon;

  factory Nominatim.fromJson(Map<String, dynamic> json) => Nominatim(
        placeId: json["place_id"],
        licence: json["licence"],
        osmType: json["osm_type"],
        osmId: json["osm_id"],
        boundingbox: List<String>.from(json["boundingbox"].map((x) => x)),
        lat: json["lat"],
        lon: json["lon"],
        displayName: json["display_name"],
        nominatimClass: json["class"],
        type: json["type"],
        importance: json["importance"].toDouble(),
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "place_id": placeId,
        "licence": licence,
        "osm_type": osmType,
        "osm_id": osmId,
        "boundingbox": List<dynamic>.from(boundingbox!.map((x) => x)),
        "lat": lat,
        "lon": lon,
        "display_name": displayName,
        "class": nominatimClass,
        "type": type,
        "importance": importance,
        "icon": icon,
      };
}
