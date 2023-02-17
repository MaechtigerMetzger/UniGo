import 'osrm.dart';

class HelperGenerateStepDescription {
  OSRMTranslate _tr = OSRMTranslate();

  HelperGenerateStepDescription();

  String generate(Step step) {
    String result = "";

    String ManeuverType = step.maneuver.type;
    String? ManeuverModifier = step.maneuver.modifier;
    int? ManeuverExit = step.maneuver.exit;
    String? StepName = step.name;
    String? StepRef = step.ref;
    String? StepDestinations = step.destinations;
    double StepLong = step.maneuver.location[0];
    double StepLat = step.maneuver.location[1];
    double StepDuration = step.duration;
    double StepDistance = step.distance;

    if (ManeuverType == "depart") {
      String? move = _tr.translate(ManeuverModifier);
      String? name = _normalizeName(StepName, StepRef, StepDestinations);

      result += "Abfahrt $move von $name. "
          "Folgen Sie dem Strassenverlauf ${StepDistance}m (${StepDuration}s).";
    }

    if (ManeuverType == "turn") {
      String? move = _tr.translate(ManeuverModifier);
      String? name = _normalizeName(StepName, StepRef, StepDestinations);
      if (move == "geradeaus") {
        result += "Weiter ${move} "
            "auf der $name. "
            "Folgen Sie dem Strassenverlauf ${StepDistance}m (${StepDuration}s).";
      } else {
        result += "Biegen Sie ${move} "
            "in die $name"
            " ab. "
            "Folgen Sie dem Strassenverlauf ${StepDistance}m (${StepDuration}s).";
      }
    }

    if (ManeuverType == "end of road") {
      String? action = _tr.translate(ManeuverType);
      String? move = _tr.translate(ManeuverModifier);
      String? name = _normalizeName(StepName, StepRef, StepDestinations);
      result += "$action ${move} in die $name ab. "
          "Folgen Sie dem Strassenverlauf ${StepDistance}m (${StepDuration}s).";
    }

    if (ManeuverType == "new name") {
      String? action = _tr.translate(ManeuverType);
      String? move = _tr.translate(ManeuverModifier);
      String? name = _normalizeName(StepName, StepRef, StepDestinations);
      result += "$action ${move}. (jetzt $name)."
          " Folgen Sie dem Strassenverlauf ${StepDistance}m (${StepDuration}s).";
    }

    if (ManeuverType == "continue") {
      String? action = _tr.translate(ManeuverType);
      String? move = _tr.translate(ManeuverModifier);
      String? name = _normalizeName(StepName, StepRef, StepDestinations);
      result += "$action ${move}. (jetzt $name)."
          " Folgen Sie dem Strassenverlauf ${StepDistance}m (${StepDuration}s).";
    }


    if (ManeuverType == "arrive") {
      String? action = _tr.translate(ManeuverType);
      String? move = _tr.translate(ManeuverModifier);
      String? name = _normalizeName(StepName, StepRef, StepDestinations);

      result += "$action $name."
          //"Sie erreichen ihr Ziel in ${StepDistance}m (${StepDuration}s)."
          " Ihr Ziel liegt $move.";
    }

    if (ManeuverType == "roundabout") {
      String? action = _tr.translate(ManeuverType);
      String? move = _tr.translate(ManeuverModifier);
      String? ausfahrt = _tr.translate("$ManeuverExit");
      String? name = _normalizeName(StepName, StepRef, StepDestinations);

      result += "$action die $ausfahrt Ausfahrt"
          " Richtung $name.";
    }

    if (ManeuverType == "rotary") {
      String? action = _tr.translate(ManeuverType);
      String? move = _tr.translate(ManeuverModifier);
      String? ausfahrt = _tr.translate("$ManeuverExit");
      result += "$action die $ausfahrt Ausfahrt"
          " Richtung $StepName.";
    }

    if (ManeuverType == "exit roundabout") {
      String? action = _tr.translate(ManeuverType);
      String? move = _tr.translate(ManeuverModifier);
      String? name = _normalizeName(StepName, StepRef, StepDestinations);

      result += "$action der $name "
          " ${StepDistance}m (${StepDuration}s).";
    }

    if (ManeuverType == "exit rotary") {
      String? action = _tr.translate(ManeuverType);
      String? move = _tr.translate(ManeuverModifier);
      String? name = _normalizeName(StepName, StepRef, StepDestinations);

      result += "$action der $name "
          " ${StepDistance}m (${StepDuration}s).";
    }

    if (ManeuverType == "on ramp") {
      String? action = _tr.translate(ManeuverType);
      String? move = _tr.translate("$ManeuverModifier" + " on ramp");
      String? name = _normalizeName(StepName, StepRef, StepDestinations);

      result += "$action $move $name "
          " ${StepDistance}m (${StepDuration}s).";
    }

    if (ManeuverType == "off ramp") {
      String? action = _tr.translate(ManeuverType);
      String? move = _tr.translate("$ManeuverModifier" + " off ramp");
      String? name = _normalizeName(StepName, StepRef, StepDestinations);

      result += "$action $move $name "
          " ${StepDistance}m (${StepDuration}s).";
    }

    if (ManeuverType == "merge") {
      String? action = _tr.translate(ManeuverType);
      String? move = _tr.translate("$ManeuverModifier" + " merge");
      String? name = _normalizeName(StepName, StepRef, StepDestinations);

      result += "$action $move $name "
          " ${StepDistance}m (${StepDuration}s).";
    }

    if (ManeuverType == "fork") {
      String? action = _tr.translate(ManeuverType);
      String? move = _tr.translate("$ManeuverModifier" + " fork");
      String? name = _normalizeName(StepName, StepRef, StepDestinations);

      result += "$action $move $name "
          " ${StepDistance}m (${StepDuration}s).";
    }


    return "${_normalizeOutput(result)}";
  }

  String? _normalizeName(String? StepName, String? StepRef, String? StepDest) {
    String? name = "$StepName";
    if (StepRef != null) {
      name += " , $StepRef";
    }
    if (StepDest != null) {
      name += " , $StepDest";
    }
    name = name.trim();
    name = name.replaceAll(RegExp(r"^,"), " ");
    name = name.replaceAll(RegExp(r",$"), " ");

    return name;
  }

  String? _normalizeOutput(String? input) {
    String result =  "$input".replaceAll(RegExp(r"\s+"), " ");
    result =  result.replaceAll(RegExp(r" \."), "\.");
    result =  result.replaceAll(RegExp(r" ,"), ",");
    result =  result.replaceAll(RegExp(r" \)"), "\)");
    return result;
  }
}

class OSRMTranslate {
  OSRMTranslate();

  Map<String, String> dictionary = {
    "turn": "Biegen Sie",
    "end of road": "Am Ende der Strasse biegen Sie",
    "arrive": "Ankunft",
    "roundabout": "Im Kreisverkehr nehmen Sie",
    "rotary": "Im Kreisverkehr nehmen Sie",
    "exit roundabout": "Folgen Sie",
    "exit rotary": "Folgen Sie",
    "on ramp": "Nehmen Sie",
    "off ramp": "Nehmen Sie",
    "fork": "Nehmen Sie",
    "merge": "Folgen Sie der",
    "new name": "Weiter",
    "continue": "Weiter",
    "straight": "geradeaus",
    "left": "links",
    "right": "rechts",
    "slight right on ramp": "die rechte Auffahrt",
    "slight right off ramp": "die rechte Ausfahrt",
    "slight left on ramp": "die linke Auffahrt",
    "slight left off ramp": "die linke Ausfahrt",
    "slight right merge": "",
    "slight left merge": "",
    "straight on ramp": "die Auffahrt",
    "straight off ramp": "die Abfahrt",
    "slight right fork": "die Abzweigung rechts",
    "slight left fork": "die Abzweigung links",
    "slight right": "rechts im Strassenverlauf",
    "slight left": "links im Strassenverlauf",
    "1": "erste",
    "2": "zweite",
    "3": "dritte",
    "4": "vierte",
    "5": "fünfte",
    "6": "sechste",
    "7": "siebte",
    "8": "achte",
  };

  String? translate(String? input) {
    return dictionary[input];
  }
}
