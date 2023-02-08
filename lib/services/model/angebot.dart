// To parse this JSON data, do
//
//     final angebot = angebotFromJson(jsonString);

import 'dart:convert';

List<Angebot> angebotListFromJson(String str) =>
    List<Angebot>.from(json.decode(str).map((x) => Angebot.fromJson(x)));

String angebotListToJson(List<Angebot> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

Angebot angebotFromJson(String str) => Angebot.fromJson(json.decode(str));

String angebotToJson(Angebot data) => json.encode(data.toJson());

class Angebot {
  Angebot({
    required this.id,
    required this.startort,
    required this.zielort,
    required this.datum,
    required this.uhrzeit,
    required this.freiplaetze,
    required this.hasprofile,
  });

  int id;
  String startort;
  String zielort;
  DateTime datum;
  String uhrzeit;
  int freiplaetze;
  List<int> hasprofile;

  Angebot.empty({
    this.id = 0,
    this.startort = "startort",
    this.zielort = "zielort",
    required this.datum,
    this.uhrzeit = "uhrzeit",
    this.freiplaetze = 0,
    this.hasprofile = const [],
  });

  factory Angebot.fromJson(Map<String, dynamic> json) => Angebot(
        id: json["id"],
        startort: json["startort"],
        zielort: json["zielort"],
        datum: DateTime.parse(json["datum"]),
        uhrzeit: json["uhrzeit"],
        freiplaetze: json["freiplaetze"],
        hasprofile: List<int>.from(json["hasprofile"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "startort": startort,
        "zielort": zielort,
        "datum":
            "${datum.year.toString().padLeft(4, '0')}-${datum.month.toString().padLeft(2, '0')}-${datum.day.toString().padLeft(2, '0')}",
        "uhrzeit": uhrzeit,
        "freiplaetze": freiplaetze,
        "hasprofile": List<dynamic>.from(hasprofile.map((x) => x)),
      };
}
