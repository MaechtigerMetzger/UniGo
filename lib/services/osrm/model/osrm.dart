// To parse this JSON data, do
//
//     final osrm = osrmFromJson(jsonString);

import 'dart:convert';

List<Osrm> osrmListFromJson(String str) =>
    List<Osrm>.from(json.decode(str).map((x) => Osrm.fromJson(x)));

String osrmLIstToJson(List<Osrm> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

Osrm osrmFromJson(String str) => Osrm.fromJson(json.decode(str));

String osrmToJson(Osrm data) => json.encode(data.toJson());

class Osrm {
  Osrm({
    required this.code,
    required this.routes,
    required this.waypoints,
  });

  String code;
  List<Route> routes;
  List<Waypoint> waypoints;

  Osrm.empty({
    this.code = "",
    this.routes = const[],
    this.waypoints = const[],
  });

  factory Osrm.fromJson(Map<String, dynamic> json) => Osrm(
        code: json["code"],
        routes: List<Route>.from(json["routes"].map((x) => Route.fromJson(x))),
        waypoints: List<Waypoint>.from(
            json["waypoints"].map((x) => Waypoint.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "routes": List<dynamic>.from(routes.map((x) => x.toJson())),
        "waypoints": List<dynamic>.from(waypoints.map((x) => x.toJson())),
      };
}

class Route {
  Route({
    required this.legs,
    required this.weightName,
    required this.weight,
    required this.duration,
    required this.distance,
  });

  List<Leg> legs;
  String weightName;
  double weight;
  double duration;
  double distance;

  factory Route.fromJson(Map<String, dynamic> json) => Route(
        legs: List<Leg>.from(json["legs"].map((x) => Leg.fromJson(x))),
        weightName: json["weight_name"],
        weight: json["weight"]?.toDouble(),
        duration: json["duration"]?.toDouble(),
        distance: json["distance"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "legs": List<dynamic>.from(legs.map((x) => x.toJson())),
        "weight_name": weightName,
        "weight": weight,
        "duration": duration,
        "distance": distance,
      };
}

class Leg {
  Leg({
    required this.steps,
    required this.summary,
    required this.weight,
    required this.duration,
    required this.distance,
  });

  List<Step> steps;
  String summary;
  double weight;
  double duration;
  double distance;

  factory Leg.fromJson(Map<String, dynamic> json) => Leg(
        steps: List<Step>.from(json["steps"].map((x) => Step.fromJson(x))),
        summary: json["summary"],
        weight: json["weight"]?.toDouble(),
        duration: json["duration"]?.toDouble(),
        distance: json["distance"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "steps": List<dynamic>.from(steps.map((x) => x.toJson())),
        "summary": summary,
        "weight": weight,
        "duration": duration,
        "distance": distance,
      };
}

class Step {
  Step({
    required this.geometry,
    required this.maneuver,
    required this.mode,
    required this.drivingSide,
    required this.name,
    required this.intersections,
    required this.weight,
    required this.duration,
    required this.distance,
    this.ref,
  });

  String geometry;
  Maneuver maneuver;
  Mode mode;
  DrivingSide drivingSide;
  String name;
  List<Intersection> intersections;
  double weight;
  double duration;
  double distance;
  String? ref;

  factory Step.fromJson(Map<String, dynamic> json) => Step(
        geometry: json["geometry"],
        maneuver: Maneuver.fromJson(json["maneuver"]),
        mode: modeValues.map[json["mode"]]!,
        drivingSide: drivingSideValues.map[json["driving_side"]]!,
        name: json["name"],
        intersections: List<Intersection>.from(
            json["intersections"].map((x) => Intersection.fromJson(x))),
        weight: json["weight"]?.toDouble(),
        duration: json["duration"]?.toDouble(),
        distance: json["distance"]?.toDouble(),
        ref: json["ref"],
      );

  Map<String, dynamic> toJson() => {
        "geometry": geometry,
        "maneuver": maneuver.toJson(),
        "mode": modeValues.reverse[mode],
        "driving_side": drivingSideValues.reverse[drivingSide],
        "name": name,
        "intersections":
            List<dynamic>.from(intersections.map((x) => x.toJson())),
        "weight": weight,
        "duration": duration,
        "distance": distance,
        "ref": ref,
      };
}

enum DrivingSide { RIGHT, LEFT, STRAIGHT }

final drivingSideValues = EnumValues({
  "left": DrivingSide.LEFT,
  "right": DrivingSide.RIGHT,
  "straight": DrivingSide.STRAIGHT
});

class Intersection {
  Intersection({
    this.out,
    required this.entry,
    required this.bearings,
    required this.location,
    this.intersectionIn,
    this.lanes,
  });

  int? out;
  List<bool> entry;
  List<int> bearings;
  List<double> location;
  int? intersectionIn;
  List<Lane>? lanes;

  factory Intersection.fromJson(Map<String, dynamic> json) => Intersection(
        out: json["out"],
        entry: List<bool>.from(json["entry"].map((x) => x)),
        bearings: List<int>.from(json["bearings"].map((x) => x)),
        location: List<double>.from(json["location"].map((x) => x?.toDouble())),
        intersectionIn: json["in"],
        lanes: json["lanes"] == null
            ? []
            : List<Lane>.from(json["lanes"]!.map((x) => Lane.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "out": out,
        "entry": List<dynamic>.from(entry.map((x) => x)),
        "bearings": List<dynamic>.from(bearings.map((x) => x)),
        "location": List<dynamic>.from(location.map((x) => x)),
        "in": intersectionIn,
        "lanes": lanes == null
            ? []
            : List<dynamic>.from(lanes!.map((x) => x.toJson())),
      };
}

class Lane {
  Lane({
    required this.valid,
    required this.indications,
  });

  bool valid;
  List<String> indications;

  factory Lane.fromJson(Map<String, dynamic> json) => Lane(
        valid: json["valid"],
        indications: List<String>.from(json["indications"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "valid": valid,
        "indications": List<dynamic>.from(indications.map((x) => x)),
      };
}

class Maneuver {
  Maneuver({
    required this.bearingAfter,
    required this.bearingBefore,
    required this.location,
    required this.modifier,
    required this.type,
  });

  int bearingAfter;
  int bearingBefore;
  List<double> location;
  DrivingSide modifier;
  String type;

  factory Maneuver.fromJson(Map<String, dynamic> json) => Maneuver(
        bearingAfter: json["bearing_after"],
        bearingBefore: json["bearing_before"],
        location: List<double>.from(json["location"].map((x) => x?.toDouble())),
        modifier: drivingSideValues.map[json["modifier"]]!,
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "bearing_after": bearingAfter,
        "bearing_before": bearingBefore,
        "location": List<dynamic>.from(location.map((x) => x)),
        "modifier": drivingSideValues.reverse[modifier],
        "type": type,
      };
}

enum Mode { DRIVING }

final modeValues = EnumValues({"driving": Mode.DRIVING});

class Waypoint {
  Waypoint({
    required this.hint,
    required this.distance,
    required this.name,
    required this.location,
  });

  String hint;
  double distance;
  String name;
  List<double> location;

  factory Waypoint.fromJson(Map<String, dynamic> json) => Waypoint(
        hint: json["hint"],
        distance: json["distance"]?.toDouble(),
        name: json["name"],
        location: List<double>.from(json["location"].map((x) => x?.toDouble())),
      );

  Map<String, dynamic> toJson() => {
        "hint": hint,
        "distance": distance,
        "name": name,
        "location": List<dynamic>.from(location.map((x) => x)),
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
