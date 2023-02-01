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
  int fahrer;
  int mitfahrer;
  List<int> messages;

  factory Chat.fromJson(Map<String, dynamic> json) => Chat(
        id: json["id"],
        name: json["name"],
        fahrer: json["fahrer"],
        mitfahrer: json["mitfahrer"],
        messages: List<int>.from(json["messages"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "fahrer": fahrer,
        "mitfahrer": mitfahrer,
        "messages": List<dynamic>.from(messages.map((x) => x)),
      };
}
