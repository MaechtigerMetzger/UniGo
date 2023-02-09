// To parse this JSON data, do
//
//     final chat = chatFromJson(jsonString);

import 'dart:convert';

List<Chat> chatListFromJson(String str) =>
    List<Chat>.from(json.decode(str).map((x) => Chat.fromJson(x)));

String chatListToJson(List<Chat> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

Chat chatFromJson(String str) => Chat.fromJson(json.decode(str));

String chatToJson(Chat data) => json.encode(data.toJson());

class Chat {
  Chat({
    required this.id,
    required this.name,
    required this.fahrer,
    required this.mitfahrer,
    required this.messages,
  });

  int id;
  String name;
  List<int> fahrer;
  List<int> mitfahrer;
  List<int> messages;

  Chat.empty({
    this.id = 0,
    this.name = "name",
    this.fahrer = const [],
    this.mitfahrer = const [],
    this.messages = const [],
  });

  factory Chat.fromJson(Map<String, dynamic> json) => Chat(
        id: json["id"],
        name: json["name"],
        fahrer: List<int>.from(json["fahrer"].map((x) => x)),
        mitfahrer: List<int>.from(json["mitfahrer"].map((x) => x)),
        messages: List<int>.from(json["messages"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "fahrer": List<dynamic>.from(fahrer.map((x) => x)),
        "mitfahrer": List<dynamic>.from(mitfahrer.map((x) => x)),
        "messages": List<dynamic>.from(messages.map((x) => x)),
      };
}
