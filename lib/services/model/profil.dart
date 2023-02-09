// To parse this JSON data, do
//
//     final profil = profilFromJson(jsonString);

import 'dart:convert';

List<Profil> profilListFromJson(String str) =>
    List<Profil>.from(json.decode(str).map((x) => Profil.fromJson(x)));

String profilListToJson(List<Profil> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

Profil profilFromJson(String str) => Profil.fromJson(json.decode(str));

String profilToJson(Profil data) => json.encode(data.toJson());

class Profil {
  Profil({
    required this.id,
    required this.vorname,
    required this.beschreibung,
    required this.tier,
    required this.raucher,
    required this.bewertung,
    required this.fahrzeug,
    required this.kmgefahren,
  });

  int id;
  String vorname;
  String beschreibung;
  String tier;
  String raucher;
  String bewertung;
  String fahrzeug;
  int kmgefahren;

  Profil.empty({
    this.id = 0,
    this.vorname = "vorname",
    this.beschreibung = "beschreibung",
    this.tier = "tier",
    this.raucher = "raucher",
    this.bewertung = "bewertung",
    this.fahrzeug = "fahrzeug",
    this.kmgefahren = 0,
  });

  factory Profil.fromJson(Map<String, dynamic> json) => Profil(
        id: json["id"],
        vorname: json["vorname"],
        beschreibung: json["beschreibung"],
        tier: json["tier"],
        raucher: json["raucher"],
        bewertung: json["bewertung"],
        fahrzeug: json["fahrzeug"],
        kmgefahren: json["kmgefahren"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "vorname": vorname,
        "beschreibung": beschreibung,
        "tier": tier,
        "raucher": raucher,
        "bewertung": bewertung,
        "fahrzeug": fahrzeug,
        "kmgefahren": kmgefahren,
      };
}
