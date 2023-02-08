// To parse this JSON data, do
//
//     final buchung = buchungFromJson(jsonString);

import 'dart:convert';

List<Buchung> buchungListFromJson(String str) =>
    List<Buchung>.from(json.decode(str).map((x) => Buchung.fromJson(x)));

String buchungListToJson(List<Buchung> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

Buchung buchungFromJson(String str) => Buchung.fromJson(json.decode(str));

String buchungToJson(Buchung data) => json.encode(data.toJson());

class Buchung {
  Buchung({
    required this.id,
    required this.name,
    required this.fahrer,
    required this.mitfahrer,
    required this.angebot,
  });

  int id;
  String name;
  List<int> fahrer;
  List<int> mitfahrer;
  List<int> angebot;

  Buchung.empty({
    this.id = 0,
    this.name = "name",
    this.fahrer = const [],
    this.mitfahrer = const [],
    this.angebot = const [],
  });

  factory Buchung.fromJson(Map<String, dynamic> json) => Buchung(
        id: json["id"],
        name: json["name"],
        fahrer: List<int>.from(json["fahrer"].map((x) => x)),
        mitfahrer: List<int>.from(json["mitfahrer"].map((x) => x)),
        angebot: List<int>.from(json["angebot"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "fahrer": List<dynamic>.from(fahrer.map((x) => x)),
        "mitfahrer": List<dynamic>.from(mitfahrer.map((x) => x)),
        "angebot": List<dynamic>.from(angebot.map((x) => x)),
      };
}
