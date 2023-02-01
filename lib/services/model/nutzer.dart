// To parse this JSON data, do
//
//     final nutzer = nutzerFromJson(jsonString);

import 'dart:convert';

List<Nutzer> nutzerListFromJson(String str) =>
    List<Nutzer>.from(json.decode(str).map((x) => Nutzer.fromJson(x)));

String nutzerListToJson(List<Nutzer> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

Nutzer nutzerFromJson(String str) => Nutzer.fromJson(json.decode(str));

String nutzerToJson(Nutzer data) => json.encode(data.toJson());

class Nutzer {
  Nutzer({
    required this.id,
    required this.vorname,
    required this.nachname,
    required this.passwort,
    required this.email,
    required this.geburtsdatum,
    required this.hasprofile,
  });

  Nutzer.empty({
    this.id = 0,
    this.vorname = "empty",
    this.nachname = "user",
    this.passwort = "",
    this.email = "",
    this.geburtsdatum = "",
    this.hasprofile = const [],
  });

  int id;
  String vorname;
  String nachname;
  String passwort;
  String email;
  String geburtsdatum;
  List<int> hasprofile;

  factory Nutzer.fromJson(Map<String, dynamic> json) => Nutzer(
        id: json["id"],
        vorname: json["vorname"],
        nachname: json["nachname"],
        passwort: json["passwort"],
        email: json["email"],
        geburtsdatum: json["geburtsdatum"],
        hasprofile: List<int>.from(json["hasprofile"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "vorname": vorname,
        "nachname": nachname,
        "passwort": passwort,
        "email": email,
        "geburtsdatum": geburtsdatum,
        "hasprofile": List<dynamic>.from(hasprofile.map((x) => x)),
      };
}
