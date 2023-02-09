// To parse this JSON data, do
//
//     final nachricht = nachrichtFromJson(jsonString);

import 'dart:convert';

List<Nachricht> nachrichtListFromJson(String str) =>
    List<Nachricht>.from(json.decode(str).map((x) => Nachricht.fromJson(x)));

String nachrichtListToJson(List<Nachricht> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

Nachricht nachrichtFromJson(String str) => Nachricht.fromJson(json.decode(str));

String nachrichtToJson(Nachricht data) => json.encode(data.toJson());

class Nachricht {
  Nachricht({
    required this.id,
    required this.inhalt,
    required this.datumZeit,
    required this.inchat,
  });

  int id;
  String inhalt;
  DateTime datumZeit;
  List<int> inchat;

  Nachricht.empty({
    this.id = 0,
    this.inhalt = "inhalt",
    required this.datumZeit,
    this.inchat = const [],
  });

  factory Nachricht.fromJson(Map<String, dynamic> json) => Nachricht(
        id: json["id"],
        inhalt: json["inhalt"],
        datumZeit: DateTime.parse(json["datum_zeit"]),
        inchat: List<int>.from(json["inchat"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "inhalt": inhalt,
        "datum_zeit": datumZeit.toIso8601String(),
        "inchat": List<dynamic>.from(inchat.map((x) => x)),
      };
}
